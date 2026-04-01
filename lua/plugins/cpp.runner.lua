-- ============================================================
-- cpp-runner.lua
-- ============================================================
-- 場所: ~/.config/nvim/lua/plugins/cpp-runner.lua
--
-- 【概要】
-- C/C++ ファイルをワンキーでビルド＆実行、またはビルド＆デバッグする。
-- AstroNvim v5+ 対応。
--
-- 【対応ファイル】
--   .cpp / .cc  → g++ -std=c++17 でコンパイル
--   .c          → gcc -std=c17 でコンパイル
--   それ以外    → 警告を出して何もしない
--
-- 【出力ファイル】
--   ソースと同じディレクトリに .out 拡張子で生成される
--   例: abc451_b.cpp → abc451_b.out
--   .gitignore に *.out を追加すればビルド成果物を無視できる
--
-- 【キーバインド】
--   <Space>rr  : 保存 → ビルド → ターミナルで実行（標準入力あり）
--   <Space>rd  : 保存 → ビルド → DAP(codelldb) でデバッグ開始
--
-- 【前提条件】
--   - g++ / gcc がインストールされていること（Xcode CLT or Homebrew）
--   - Mason で codelldb がインストールされていること（:MasonInstall codelldb）
--   - nvim-dap プラグインが入っていること（astrocommunity.pack.cpp 推奨）
--
-- 【使い方】
--   1. Neovim で .cpp / .c ファイルを開く
--   2. <Space>rr で実行（AtCoder等の標準入力が必要な問題はこちら）
--   3. <Space>rd でデバッグ（事前に <Space>db でブレークポイントを置く）
--
-- 【コンパイルオプション】
--   -g   : デバッグ情報を付与（デバッガがソースコードと対応付けるために必要）
--   -O0  : 最適化なし（変数が最適化で消えるのを防ぐ）
-- ============================================================

--- コンパイラを拡張子から判定するヘルパー関数
---@param ext string ファイルの拡張子
---@return string|nil compiler コンパイラコマンド（非対応なら nil）
local function get_compiler(ext)
  if ext == "cpp" or ext == "cc" then
    return "g++ -std=c++17"
  elseif ext == "c" then
    return "gcc -std=c17"
  end
  return nil
end

--- 現在のファイル情報を取得するヘルパー関数
---@return string src ソースファイルのフルパス
---@return string ext 拡張子
---@return string exe 実行ファイルのパス（.out 拡張子）
local function get_file_info()
  local src = vim.fn.expand "%:p"
  local ext = vim.fn.expand "%:e"
  -- 拡張子を .out に置換（例: abc451_b.cpp → abc451_b.out）
  local exe = src:gsub("%.[^.]+$", ".out")
  return src, ext, exe
end

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {

          -- ==============================
          -- <Space>rr : ビルド＆実行
          -- ==============================
          ["<Leader>rr"] = {
            function()
              local src, ext, exe = get_file_info()
              local compiler = get_compiler(ext)
              if not compiler then
                vim.notify("Unsupported file type: " .. ext, vim.log.levels.WARN)
                return
              end

              local cmd = string.format("%s -g -O0 -o '%s' '%s' && '%s'", compiler, exe, src, exe)

              vim.cmd "write"
              vim.cmd("split | terminal " .. cmd)
            end,
            desc = "C/C++ Build & Run",
          },

          -- ==============================
          -- <Space>rd : ビルド＆デバッグ
          -- ==============================
          ["<Leader>rd"] = {
            function()
              local src, ext, exe = get_file_info()
              local compiler = get_compiler(ext)
              if not compiler then
                vim.notify("Unsupported file type: " .. ext, vim.log.levels.WARN)
                return
              end

              local cmd = string.format("%s -g -O0 -o '%s' '%s'", compiler, exe, src)

              vim.cmd "write"
              local result = vim.fn.system(cmd)

              if vim.v.shell_error ~= 0 then
                vim.notify("Build failed:\n" .. result, vim.log.levels.ERROR)
                return
              end

              vim.notify("Build OK, starting debugger...", vim.log.levels.INFO)

              require("dap").run {
                type = "codelldb",
                request = "launch",
                name = "Debug current file",
                program = exe,
                cwd = vim.fn.fnamemodify(src, ":h"),
                stopOnEntry = false,
              }
            end,
            desc = "C/C++ Build & Debug",
          },
        },
      },
    },
  },
}
