return {
  "nvim-java/nvim-java",
  ft = "java",
  dependencies = {
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-jdtls",
  },
  config = function()
    require("java").setup()
  end,
}
