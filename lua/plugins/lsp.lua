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

    local OS = package.config:sub(1, 1) == "/" and "Linux" or "Windows"
    if OS == "Windows" then
      local user_home = os.getenv("USERPROFILE")
      local gcc_path = user_home .. "\\scoop\\apps\\gcc\\current\\bin\\g++.exe"
      lspconfig["clangd"].setup({
        capabilities = capabilities,
        cmd = { "clangd", "--query-driver=" .. gcc_path }
      })
    else
      -- C, cmake, c++
      lspconfig["ccls"].setup({
        capabilities = capabilities
      })
    end

    lspconfig["neocmake"].setup({
      capabilities = capabilities
    })

    -- Texlab
    lspconfig["texlab"].setup({
      capabilities = capabilities
    })

    -- Rust
    lspconfig["rust_analyzer"].setup({
      capabilities = capabilities,
    })

    -- Bash
    lspconfig["bashls"].setup({
      capabilities = capabilities,
    })

    -- Svelte
    lspconfig["svelte"].setup({
      capabilities = capabilities,
    })

    -- Json
    lspconfig["jsonls"].setup({
      capabilities = capabilities,
    })

    -- Typescript
    lspconfig["ts_ls"].setup({
      capabilities = capabilities,
    })

    -- CCS
    lspconfig["cssls"].setup({
      capabilities = capabilities,
    })

    -- Emmet
    lspconfig["emmet_ls"].setup({
      capabilities = capabilities,
      filetypes = { "html", "typescriptreact", "javascriptreact", "css" },
    })

    -- Python
    lspconfig["pyright"].setup({
      capabilities = capabilities,
    })

    -- Go
    lspconfig["gopls"].setup({
      capabilities = capabilities
    })

    -- Lua
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
