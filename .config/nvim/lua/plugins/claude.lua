return {
  {
    "greggh/claude-code.nvim",
    config = function()
      require("claude-code").setup({
        auto_reload = true,
        keymaps = {
          toggle = {
            normal = "<leader>cc",
            terminal = "<leader>cc",
            variants = {
              continue = "<leader>cr",
              verbose = "<leader>cv",
            }
          },
          window_navigation = true,
          scrolling = true
        },
      })
    end,
  },
}