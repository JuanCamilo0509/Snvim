return {
  "lervag/vimtex",
  lazy = false,
  init = function ()
    vim.g.vimtex_view_method = "mupdf"
    vim.g.vimtex_mappings_enabled = false
  end
}