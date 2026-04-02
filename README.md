# astronvim-config

[AstroNvim](https://github.com/AstroNvim/AstroNvim) v5+ をベースにした個人用 Neovim 設定です。

## クイックスタート

```shell
git clone https://github.com/KinuGra/astronvim-config.git ~/.config/nvim
nvim
```

## ドキュメント

- [プラグイン一覧](docs/plugins.md) — 全プラグインの説明
- [カスタムキーバインド](docs/keybindings.md) — 追加・変更したキーバインド
- [カスタム機能詳細](docs/custom-features.md) — cpp-runner、hlchunk.nvim など独自機能の使い方

## 構成

```
~/.config/nvim/
├── init.lua                  # エントリーポイント（基本的に触らない）
├── lua/
│   ├── lazy_setup.lua        # Lazy.nvim セットアップ・AstroNvim ロード
│   ├── polish.lua            # 最終処理（現在は無効化）
│   ├── user/
│   │   └── options.lua       # グローバルオプション（クリップボード等）
│   └── plugins/
│       ├── astrocore.lua     # キーマッピング・コア設定
│       ├── cpp.runner.lua    # C/C++ ビルド・実行・デバッグ
│       ├── hlchunk.lua       # インデントガイド・チャンクハイライト
│       ├── render-markdown.lua  # Markdown リッチレンダリング
│       └── user.lua          # toggleterm カスタマイズ等
└── docs/
    ├── plugins.md            # プラグイン一覧
    ├── keybindings.md        # カスタムキーバインド
    └── custom-features.md   # カスタム機能詳細
```

## 注意事項

- AstroNvim v5 は Lazy.nvim ベースで、設定は `lua/plugins/*.lua` に書く
- 各設定ファイルは `return { ... }` でプラグイン定義を返す形式
- `lua/user/init.lua` は使われない（v5 以降の仕様）
- ファイル先頭に `if true then return {} end` がある場合、そのファイルは無効化されている

## 初回セットアップ時のバックアップ

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```
