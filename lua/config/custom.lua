-- Some groups to improve looking
vim.api.nvim_set_hl(0, 'CursorLineNr', { link = "Function" })
vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
vim.api.nvim_set_hl(0, "Pmenu", { link = "Normal" })
vim.api.nvim_set_hl(0, "PmenuSel", { link = "Function" })

-- Lua line Configuration
local modes   = {
  ["n"] = { name = "NORMAL ", hl = "Function" },
  ["i"] = { name = "INSERT ", hl = "String" },
  ["v"] = { name = "VISUAL ", hl = "Statement" },
  ["V"] = { name = "V-LINE ", hl = "Statement" },
  ["c"] = { name = "COMMAND", hl = "boolean" },
  ["R"] = { name = "REPLACE", hl = "boolean" },
}

local padding = "  "

function Mode()
  local mode = vim.api.nvim_get_mode().mode
  local data = modes[mode] or { name = "UNKNOWN", hl = "StatusLine" }
  return string.format("%%#%s#%s%%*", data.hl, data.name)
end

function DiagnosticStatus()
  local diag_count = vim.diagnostic.count()
  local err = diag_count[1] or 0
  local warn = diag_count[2] or 0

  return
      (err > 0 and string.format("%%#DiagnosticError#%s%%*", err) or "") .. padding ..
      (warn > 0 and string.format("%%#DiagnosticWarn#%s%%*", warn) or "")
end

function GetBufMarks()
  local bufBookmarks = {}
  local bufnr = vim.api.nvim_get_current_buf()
  local bufferMarks = vim.fn.getmarklist(bufnr)
  local mode = vim.api.nvim_get_mode().mode
  local data = modes[mode]
  for _, mark in ipairs(bufferMarks) do
    local formatingMark = string.sub(mark.mark, -1)
    if formatingMark:match("%a") then
      if mark.pos[2] == vim.fn.line(".") then
        formatingMark = string.format("%%#%s#%s%%*", data.hl, formatingMark)
      end
      table.insert(bufBookmarks, formatingMark)
    end
  end
  return table.concat(bufBookmarks, " ")
end

function GetGlobalMarks()
  local bufBookmarks = {}
  local bufferMarks = vim.fn.getmarklist()
  for _, mark in ipairs(bufferMarks) do
    local formatingMark = string.sub(mark.mark, -1)
    if formatingMark:match("%a") then
      table.insert(bufBookmarks, formatingMark)
    end
  end
  return table.concat(bufBookmarks, " ")
end

function GitBranch()
  local result = vim.system({ "git", "branch", "--show-current" }):wait()
  local branch = result.stdout:gsub("\n", "")

  local mode = vim.api.nvim_get_mode().mode
  local data = modes[mode] or { hl = "StatusLine" }

  if branch == "" then
    return ""
  else
    return string.format("%%#%s# %s%%*", data.hl, string.upper(branch))
  end
end

local statusline = {
  padding .. '%{%v:lua.Mode()%}',
  padding,
  ' %t',
  ' %M' .. padding,
  '%{%v:lua.GetBufMarks()%}',
  '%=',
  '%{%v:lua.DiagnosticStatus()%}',
  padding,
  '%{%v:lua.GetGlobalMarks()%}',
  padding,
  '%{%v:lua.GitBranch()%}' .. padding,
}

vim.o.statusline = table.concat(statusline, '')
