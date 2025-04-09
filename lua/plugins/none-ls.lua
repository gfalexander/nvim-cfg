return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.golines,
        null_ls.builtins.diagnostics.golangci_lint,
      },
    })

    vim.keymap.set("n", "<leader>F", vim.lsp.buf.format, { desc = "format document" })
  end,
}
