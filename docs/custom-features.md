# カスタム機能詳細

AstroNvim のデフォルトには含まれない、このリポジトリ独自の機能をまとめます。

---

## C/C++ ビルド・実行・デバッグ (cpp-runner)

設定ファイル: `lua/plugins/cpp.runner.lua`

### 概要

C/C++ ファイルをワンキーでビルド＆実行、またはビルド＆デバッグします。
AtCoder などの競技プログラミングでの利用を想定した設計です。

### 対応ファイル

| 拡張子 | コンパイラ |
|---|---|
| `.cpp` / `.cc` | `g++ -std=c++17` |
| `.c` | `gcc -std=c17` |

### 出力ファイル

ソースと同じディレクトリに `.out` 拡張子で生成されます。

```
abc451_b.cpp → abc451_b.out
```

`.gitignore` に `*.out` を追加すればビルド成果物を無視できます。

### キーバインド

| キー | 説明 |
|---|---|
| `<Leader>rr` | 保存 → ビルド → ターミナルで実行（標準入力あり） |
| `<Leader>rd` | 保存 → ビルド → DAP(codelldb) でデバッグ開始 |

### 使い方

1. Neovim で `.cpp` / `.c` ファイルを開く
2. `<Leader>rr` で実行（AtCoder 等で標準入力が必要な問題はこちら）
3. `<Leader>rd` でデバッグ（事前に `<Leader>db` でブレークポイントを置く）

### 前提条件

- `g++` / `gcc` がインストールされていること（Xcode CLT または Homebrew）
- Mason で `codelldb` がインストールされていること（`:MasonInstall codelldb`）
- `nvim-dap` プラグインが入っていること

### コンパイルオプション

| オプション | 説明 |
|---|---|
| `-g` | デバッグ情報を付与（デバッガがソースコードと対応付けるために必要） |
| `-O0` | 最適化なし（変数がコンパイラ最適化で消えるのを防ぐ） |

---

## インデントガイド・チャンクハイライト (hlchunk.nvim)

設定ファイル: `lua/plugins/hlchunk.lua`

### 概要

コードの構造を視覚的にわかりやすくする表示拡張です。

### 機能

| 機能 | 説明 | 状態 |
|---|---|---|
| `chunk` | カーソルがいるスコープ（関数・if 文など）を線でハイライト | 有効 |
| `indent` | インデントレベルをガイドラインで表示 | 有効 |
| `line_num` | チャンク内の行番号に色を付ける | 有効 |
| `blank` | 空白文字の可視化 | 無効 |

### カラー設定

- チャンクハイライト: 紫系 (`#806d9c`) / エラー時は赤 (`#c21f30`)
- インデントガイド: 暗めのグレー (`#444444`)
- チャンク内行番号: 紫系 (`#806d9c`)

---

## Markdown リッチレンダリング (render-markdown.nvim)

設定ファイル: `lua/plugins/render-markdown.lua`

### 概要

Markdown ファイルをバッファ内でリッチにレンダリングします。
見出し・コードブロック・リストなどが視覚的に整形されて表示されます。

### キーバインド

| キー | 説明 |
|---|---|
| `<Leader>sm` | レンダリングのオン/オフをトグル |

### 設定内容

- `render_modes = true`: ノーマルモード以外でもレンダリング
- 見出しは `width = "block"` で背景色付きブロック表示
- コードブロックも `width = "block"` でブロック表示

---

## ターミナル内エスケープ (toggleterm.nvim カスタマイズ)

設定ファイル: `lua/plugins/user.lua`

### 概要

toggleterm.nvim のターミナルバッファ内で `jj` または `jk` を押すと、
`Esc` を押すことなく Terminal Insert モードを抜けて Normal モードに戻れます。

```lua
vim.keymap.set("t", "jj", "<cmd>stopinsert<CR>", { buffer = term.bufnr })
vim.keymap.set("t", "jk", "<cmd>stopinsert<CR>", { buffer = term.bufnr })
```

---

## グローバルオプション

設定ファイル: `lua/user/options.lua`

| 設定 | 値 | 説明 |
|---|---|---|
| `clipboard` | `"unnamedplus"` | システムクリップボードと自動連携（`y`/`p` が OS クリップボードと共有） |
