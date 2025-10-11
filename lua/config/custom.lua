-- Some groups to improve looking
vim.api.nvim_set_hl(0, 'CursorLineNr', { link = "Function" })
vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
vim.api.nvim_set_hl(0, "Pmenu", { link = "Normal" })
vim.api.nvim_set_hl(0, "PmenuSel", { link = "Function" })

-- Lua line Configuration
local modes = {
  ["n"] = { name = "NORMAL ", hl = "Function" },
  ["i"] = { name = "INSERT ", hl = "String" },
  ["v"] = { name = "VISUAL ", hl = "Statement" },
  ["V"] = { name = "V-LINE ", hl = "Statement" },
  ["c"] = { name = "COMMAND", hl = "boolean" },
  ["R"] = { name = "REPLACE", hl = "boolean" },
  ["x"] = { name = "V-BLOCK", hl = "boolean" },
}

local padding = "  "

function LspStatus()
  local clients = vim.lsp.get_clients({ bufnr = 0 })
  if next(clients) == nil then return false end
  return true
end

function Icon_File_Lsp()
  local icons = require('mini.icons')
  local icon, hl = icons.get('file', vim.fn.expand('%:t'))
  if LspStatus() then
    return string.format("%%#%s#%s %%t%%*", hl, icon)
  else
    return string.format("%%#%s#   %%f%%*", hl)
  end
end

function Mode()
  local mode = vim.api.nvim_get_mode().mode
  if mode == string.char(22) then
    mode = "x"
  end
  local data = modes[mode] or { name = mode, hl = "StatusLine" }
  return string.format("%%#%s#%s%%*", data.hl, data.name)
end

function DiagnosticStatus()
  local diag_count = vim.diagnostic.count()
  local err = diag_count[1] or 0
  local warn = diag_count[2] or 0

  return
      (err > 0 and string.format("%%#DiagnosticError#%s %%*", err) or "  ") .. padding ..
      (warn > 0 and string.format("%%#DiagnosticWarn#%s %%*", warn) or "  ")
end

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
  callback = function()
    local handle = io.popen("git branch --show-current 2>/dev/null")
    if handle then
      vim.b.git_branch = handle:read("*l") or ""
      handle:close()
    else
      vim.b.git_branch = ""
    end
  end,
})



function GitBranch()
  local branch = vim.b.git_branch or ""
  if branch == "" then return "" end

  local mode = vim.api.nvim_get_mode().mode
  local data = modes[mode] or { hl = "StatusLine" }
  return string.format("%%#%s#%s%%*", data.hl, string.upper(branch))
end

vim.o.statusline = table.concat({
  padding,
  '%{%v:lua.Mode()%}',
  padding,
  '%=',
  '%{%v:lua.GitBranch()%}',
  '%=',
  '%{%v:lua.DiagnosticStatus()%}',
  padding,
  '%{%v:lua.Icon_File_Lsp()%}',
  padding,
}, '')
