return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- configure C
    lspconfig["ccls"].setup({
      capabilities = capabilities
    })

    -- configure texlab
    lspconfig["texlab"].setup({
      capabilities = capabilities
    })

    -- configure Rust server
    lspconfig["rust_analyzer"].setup({
      capabilities = capabilities,
    })

    -- configure typescript server with plugin
    lspconfig["ts_ls"].setup({
      capabilities = capabilities,
    })

    -- configure css server
    lspconfig["cssls"].setup({
      capabilities = capabilities,
    })

    -- configure emmet language server
    lspconfig["emmet_ls"].setup({
      capabilities = capabilities,
      filetypes = { "html", "typescriptreact", "javascriptreact", "css" },
    })

    -- configure python server
    lspconfig["pyright"].setup({
      capabilities = capabilities,
    })

    -- Go
    lspconfig["gopls"].setup({
      capabilities = capabilities
    })

    -- configure lua server (with special settings)
    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          -- make the language server recognize "vim" global
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })
  end,
}
