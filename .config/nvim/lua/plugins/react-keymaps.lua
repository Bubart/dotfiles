return {
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>r", group = "React", icon = "⚛️" },
        { "<leader>rc", "<cmd>!npm run dev<cr>", desc = "Start dev server", icon = "🚀" },
        { "<leader>rb", "<cmd>!npm run build<cr>", desc = "Build project", icon = "📦" },
        { "<leader>rt", "<cmd>!npm run test<cr>", desc = "Run tests", icon = "🧪" },
        { "<leader>ri", "<cmd>!npm install<cr>", desc = "Install dependencies", icon = "📥" },
        { "<leader>rp", "<cmd>!npm run preview<cr>", desc = "Preview build", icon = "👀" },
        { "<leader>rl", "<cmd>!npm run lint<cr>", desc = "Run linter", icon = "🔍" },
        { "<leader>rf", "<cmd>!npm run format<cr>", desc = "Format code", icon = "✨" },
        { "<leader>rj", "<cmd>lua require('telescope.builtin').live_grep({search_dirs={'src/components'}})<cr>", desc = "Search components", icon = "🔍" },
        { "<leader>rs", "<cmd>lua require('telescope.builtin').find_files({cwd='src'})<cr>", desc = "Find src files", icon = "📁" },
      },
    },
  },
}