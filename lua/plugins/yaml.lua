return {
  "someone-stole-my-name/yaml-companion.nvim",
  dependencies = { -- optional packages
    "neovim/nvim-lspconfig",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "diogo464/kubernetes.nvim",
  },
  lazy = false,
  config = function()
    require("telescope").load_extension("yaml_schema")
    local cfg = require("yaml-companion").setup({
      schemas = {
        {
          name = "Kubernetes full with CRDs",
          uri = require("kubernetes").yamlls_schema(),
        },
      },
    })
    require("lspconfig")["yamlls"].setup(cfg)
  end,
}
