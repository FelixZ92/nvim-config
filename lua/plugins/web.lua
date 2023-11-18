return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        htmx = {
          cmd = { "htmx-lsp" },
          filetypes = { "html", "templ" },
        },
        templ = {},
      },
    },
  },
  { "vrischmann/tree-sitter-templ" },
  { "joerdav/templ.vim" },
}
