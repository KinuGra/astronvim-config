-- ============================================================================
-- astrocore.lua — AstroNvim コア設定
-- ============================================================================
-- AstroNvim のマッピング、Vim オプション、autocommand 等を一元管理するファイル。
-- ドキュメント: `:h astrocore`
-- Lua LSP を入れると補完が効く: `:LspInstall lua_ls`
--
-- ■ AstroNvim 標準トグル（このファイルでの定義は不要）
--   <Leader>uw  行折り返し (wrap)          <Leader>un  行番号 (number)
--   <Leader>ur  相対行番号 (relativenumber) <Leader>us  スペルチェック
--   <Leader>uf  フォーマットオンセーブ(buf) <Leader>uF  フォーマットオンセーブ(global)
--   <Leader>uh  URL ハイライト
--   → <Space>u で which-key メニューに全項目表示
-- ============================================================================

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {

    -- ========================================================================
    -- features: AstroNvim コア機能の ON/OFF
    -- ========================================================================
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- treesitter 等を無効化する閾値
      autopairs = true, -- 自動カッコ閉じ
      cmp = true, -- 補完 (nvim-cmp)
      diagnostics = { virtual_text = true, virtual_lines = false },
      highlighturl = true, -- URL ハイライト
      notifications = true, -- 通知 (snacks.nvim)
    },

    -- ========================================================================
    -- diagnostics: vim.diagnostics.config() に渡す設定
    -- ========================================================================
    diagnostics = {
      virtual_text = true,
      underline = true,
    },

    -- ========================================================================
    -- mappings: キーマッピング
    -- ========================================================================
    -- 【数字プレフィックス】
    --   vim.v.count1 を使ったマッピングはキー入力前に数字で倍率指定できる。
    --   例: 5<Leader>wj → 下方向に 5×2=10 行分リサイズ
    mappings = {
      n = {

        -- ==== Buffer navigation ====
        -- ]b / [b : 次/前のバッファ（数字対応: 3]b → 3つ先）
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- <Leader>bd : タブラインからバッファを選んで閉じる
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- ==== Split resize（数字プレフィックス対応） ====
        -- macOS では Ctrl+矢印 が Mission Control に取られるため、
        -- <Leader>w + hjkl でリサイズする。
        --   <Leader>wj        → 下に 2 行分
        --   5<Leader>wj       → 下に 10 行分（5 × 2）
        --   <Leader>w=        → 全スプリット均等化
        ["<Leader>wk"] = {
          function() vim.cmd("resize +" .. (vim.v.count1 * 2)) end,
          desc = "Resize split up",
        },
        ["<Leader>wj"] = {
          function() vim.cmd("resize -" .. (vim.v.count1 * 2)) end,
          desc = "Resize split down",
        },
        ["<Leader>wh"] = {
          function() vim.cmd("vertical resize -" .. (vim.v.count1 * 2)) end,
          desc = "Resize split left",
        },
        ["<Leader>wl"] = {
          function() vim.cmd("vertical resize +" .. (vim.v.count1 * 2)) end,
          desc = "Resize split right",
        },
        ["<Leader>w="] = { "<C-w>=", desc = "Equalize split sizes" },
      },
    },
  },
}
