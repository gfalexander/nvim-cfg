return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        auto_install = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspConfig = require("lspconfig")

      lspConfig.lua_ls.setup({ capabilities = capabilities })
      lspConfig.gopls.setup({ capabilities = capabilities })
      lspConfig.yamlls.setup({ capabilities = capabilities })
      lspConfig.sqlls.setup({ capabilities = capabilities })
      lspConfig.ast_grep.setup({ capabilities = capabilities })
      lspConfig.cmake.setup({ capabilities = capabilities })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "shows method documentation" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "go to definition of method" })
      vim.keymap.set(
        { "n", "v" },
        "<leader>ca",
        vim.lsp.buf.code_action,
        { desc = "show things to do with line" }
      )
    end,
  },
}
