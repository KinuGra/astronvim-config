-- ============================================================
-- hlchunk.lua
-- ============================================================
-- 場所: ~/.config/nvim/lua/plugins/hlchunk.lua
--
-- 【概要】
-- インデントガイドライン、コードチャンクのハイライト、
-- 行番号の色付けなどを表示するプラグイン。
-- コードの構造が視覚的にわかりやすくなる。
--
-- 【機能】
--   chunk    : カーソルがいるスコープ（関数・if文など）を線でハイライト
--   indent   : インデントレベルをガイドラインで表示
--   line_num : チャンク内の行番号に色を付ける
--   blank    : 空白文字の可視化（デフォルト無効）
-- ============================================================

return {
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup {
        chunk = {
          enable = true,
          -- チャンクハイライトの色（お好みで変更可）
          style = {
            { fg = "#806d9c" }, -- 紫系
            { fg = "#c21f30" }, -- エラー時（赤）
          },
          use_treesitter = true,
          -- アニメーション表示（好みで true/false）
          delay = 0,
        },
        indent = {
          enable = true,
          -- インデントガイドの色
          style = {
            { fg = "#444444" },
          },
          use_treesitter = false,
        },
        line_num = {
          enable = true,
          -- チャンク内の行番号の色
          style = "#806d9c",
          use_treesitter = true,
        },
        blank = {
          enable = false, -- 空白文字の可視化（必要なら true に）
        },
      }
    end,
  },
}
