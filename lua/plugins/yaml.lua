return {
  "someone-stole-my-name/yaml-companion.nvim",
  dependencies = { -- optional packages
    "neovim/nvim-lspconfig",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("telescope").load_extension("yaml_schema")
    local cfg = require("yaml-companion").setup({
      schemas = {
        {
          name = "Kubernetes 1.28.3",
          uri = "https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.28.3-standalone-strict/all.json",
        },
        {
          name = "ExternalSecret v1beta1",
          uri = "/Users/felix/src/github.com/felixz92/crd-scraper/json-schema.json",
        },
      },
    })
    require("lspconfig")["yamlls"].setup(cfg)
  end,
}
