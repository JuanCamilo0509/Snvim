vim.pack.add({ "https://github.com/cvigilv/esqueleto.nvim.git" })

require('esqueleto').setup({
  patterns = { "cpp" },
  wildcards = {
    expand = true,
    lookup = {
      ["upper_name"] = function()
        return string.upper(vim.fn.expand("%:t:r"))
      end
    }
  }
})
