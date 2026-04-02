# プラグイン一覧

AstroNvim v5 ベースの設定で有効になっているプラグインをまとめます。
`lazy-lock.json` に記録された実際のインストール済みプラグインを基にしています。

---

## AstroNvim コアエコシステム

| プラグイン | 説明 |
|---|---|
| [AstroNvim/AstroNvim](https://github.com/AstroNvim/AstroNvim) | ベースとなる Neovim ディストリビューション (v5+) |
| [AstroNvim/astrocore](https://github.com/AstroNvim/astrocore) | キーマッピング・オプション・autocommand を管理するコアプラグイン |
| [AstroNvim/astrolsp](https://github.com/AstroNvim/astrolsp) | LSP 設定エンジン |
| [AstroNvim/astroui](https://github.com/AstroNvim/astroui) | UI・カラースキーム・アイコン設定 |
| [AstroNvim/astrotheme](https://github.com/AstroNvim/astrotheme) | AstroNvim 純正カラースキーム（デフォルト: `astrodark`） |

---

## 補完・スニペット

| プラグイン | 説明 |
|---|---|
| [Saghen/blink.cmp](https://github.com/Saghen/blink.cmp) | 高速な補完エンジン（nvim-cmp の後継） |
| [Saghen/blink.compat](https://github.com/Saghen/blink.compat) | blink.cmp と nvim-cmp プラグインの互換レイヤー |
| [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) | スニペットエンジン |
| [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | 多言語対応のスニペット集 |

---

## LSP・フォーマット・診断

| プラグイン | 説明 |
|---|---|
| [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP クライアント設定 |
| [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) | LSP サーバー・フォーマッタ・デバッガのパッケージマネージャ |
| [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Mason と nvim-lspconfig の橋渡し |
| [WhoIsSethDaniel/mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) | Mason パッケージの自動インストール管理 |
| [jay-babu/mason-null-ls.nvim](https://github.com/jay-babu/mason-null-ls.nvim) | Mason と none-ls の橋渡し |
| [nvimtools/none-ls.nvim](https://github.com/nvimtools/none-ls.nvim) | 外部フォーマッタ・リンターを LSP として扱う（null-ls 後継） |
| [folke/neoconf.nvim](https://github.com/folke/neoconf.nvim) | プロジェクト単位の Neovim 設定（`.neoconf.json`） |

---

## シンタックス・Treesitter

| プラグイン | 説明 |
|---|---|
| [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | シンタックスハイライト・コード解析エンジン |
| [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Treesitter ベースのテキストオブジェクト（関数・クラスを `af`/`if` で選択など） |
| [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) | HTML/JSX タグの自動閉じ・リネーム |

---

## デバッグ (DAP)

| プラグイン | 説明 |
|---|---|
| [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap) | Debug Adapter Protocol クライアント |
| [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) | DAP 用の UI（変数・スタック・ブレークポイント表示） |
| [rcarriga/cmp-dap](https://github.com/rcarriga/cmp-dap) | DAP の REPL 内で補完を有効化 |
| [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim) | Mason と nvim-dap の橋渡し |

---

## ファイル・バッファ管理

| プラグイン | 説明 |
|---|---|
| [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | ファイルエクスプローラー（`<Leader>e` で開閉） |
| [s1n7ax/nvim-window-picker](https://github.com/s1n7ax/nvim-window-picker) | neo-tree でファイルを開くウィンドウを選択 |
| [stevearc/resession.nvim](https://github.com/stevearc/resession.nvim) | セッション保存・復元 |

---

## UI・表示

| プラグイン | 説明 |
|---|---|
| [rebelot/heirline.nvim](https://github.com/rebelot/heirline.nvim) | ステータスライン・タブライン |
| [folke/snacks.nvim](https://github.com/folke/snacks.nvim) | ダッシュボード・通知・各種 QoL 機能 |
| [folke/which-key.nvim](https://github.com/folke/which-key.nvim) | キーバインドのヒント表示 |
| [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | `TODO` / `FIXME` / `NOTE` などのコメントをハイライト |
| [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate) | カーソル下の単語を自動ハイライト |
| [brenoprata10/nvim-highlight-colors](https://github.com/brenoprata10/nvim-highlight-colors) | CSS カラーコードなどをその色でハイライト |
| [stevearc/aerial.nvim](https://github.com/stevearc/aerial.nvim) | コードアウトライン（関数・クラス一覧）表示 |

---

## エディタ補助

| プラグイン | 説明 |
|---|---|
| [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) | カッコ・引用符の自動補完 |
| [max397574/better-escape.nvim](https://github.com/max397574/better-escape.nvim) | `jk` / `jj` で Insert モードを脱出（AstroNvim 標準） |
| [mrjones2014/smart-splits.nvim](https://github.com/mrjones2014/smart-splits.nvim) | ウィンドウ分割のナビゲーション・リサイズ |
| [NMAC427/guess-indent.nvim](https://github.com/NMAC427/guess-indent.nvim) | ファイルのインデント設定を自動検出 |
| [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | フローティング・スプリット切り替え可能なターミナル |

---

## ユーティリティ・依存ライブラリ

| プラグイン | 説明 |
|---|---|
| [folke/lazy.nvim](https://github.com/folke/lazy.nvim) | プラグインマネージャ |
| [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Lua ユーティリティライブラリ（多数のプラグインの依存） |
| [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim) | UI コンポーネントライブラリ |
| [echasnovski/mini.icons](https://github.com/echasnovski/mini.icons) | アイコンライブラリ |
| [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | Nerd Font ベースのファイルアイコン |
| [nvim-neotest/nvim-nio](https://github.com/nvim-neotest/nvim-nio) | 非同期 I/O ライブラリ |
| [folke/lazydev.nvim](https://github.com/folke/lazydev.nvim) | Neovim の Lua API に型補完を提供 |
| [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git の差分をサインカラムに表示 |

---

## ユーザー追加プラグイン（カスタム）

以下は AstroNvim のデフォルトには含まれず、このリポジトリで独自に追加したプラグインです。

| プラグイン | 設定ファイル | 説明 |
|---|---|---|
| [shellRaining/hlchunk.nvim](https://github.com/shellRaining/hlchunk.nvim) | `lua/plugins/hlchunk.lua` | インデントガイド・チャンクハイライト・行番号色付け |
| [MeanderingProgrammer/render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) | `lua/plugins/render-markdown.lua` | Markdown をリッチにレンダリング |

詳細は [custom-features.md](custom-features.md) を参照してください。
