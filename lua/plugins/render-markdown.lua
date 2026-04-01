return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  ft = { "markdown" },
  keys = {
    { "<Space>sm", ":RenderMarkdown toggle<CR>", desc = "Toggle Render Markdown" },
  },
  opts = {
    render_modes = true,
    heading = {
      width = "block",
      left_pad = 0,
      right_pad = 4,
      icons = {},
    },
    code = {
      width = "block",
    },
  },
}
