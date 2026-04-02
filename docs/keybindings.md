# カスタムキーバインド

このファイルは AstroNvim のデフォルトに**追加・カスタマイズした**キーバインドをまとめます。
AstroNvim 標準のキーバインドは `:WhichKey` または `<Space>` を押すと一覧表示されます。

> **リーダーキー**: `<Space>`  
> **ローカルリーダー**: `,`

---

## バッファナビゲーション

設定ファイル: `lua/plugins/astrocore.lua`

| キー | モード | 説明 |
|---|---|---|
| `]b` | Normal | 次のバッファへ（数字対応: `3]b` → 3つ先） |
| `[b` | Normal | 前のバッファへ（数字対応: `3[b` → 3つ前） |
| `<Leader>bd` | Normal | タブラインからバッファを選んで閉じる |

---

## スプリット（ウィンドウ分割）リサイズ

設定ファイル: `lua/plugins/astrocore.lua`

macOS では `Ctrl+矢印` が Mission Control に取られるため、`<Leader>w` + `hjkl` でリサイズします。

| キー | モード | 説明 |
|---|---|---|
| `<Leader>wk` | Normal | スプリットを上に広げる（2行分） |
| `<Leader>wj` | Normal | スプリットを下に縮める（2行分） |
| `<Leader>wh` | Normal | スプリットを左に縮める（2列分） |
| `<Leader>wl` | Normal | スプリットを右に広げる（2列分） |
| `<Leader>w=` | Normal | 全スプリットを均等化 |

**数字プレフィックス対応**: `5<Leader>wj` → 5×2=10行分リサイズ

---

## C/C++ ビルド・実行・デバッグ

設定ファイル: `lua/plugins/cpp.runner.lua`  
詳細: [custom-features.md](custom-features.md#cc-ビルド実行デバッグ-cpp-runner)

| キー | モード | 説明 |
|---|---|---|
| `<Leader>rr` | Normal | C/C++ ファイルを保存→ビルド→ターミナルで実行 |
| `<Leader>rd` | Normal | C/C++ ファイルを保存→ビルド→DAP(codelldb) でデバッグ開始 |

---

## Markdown レンダリング

設定ファイル: `lua/plugins/render-markdown.lua`

| キー | モード | 説明 |
|---|---|---|
| `<Leader>sm` | Normal | Markdown のリッチレンダリングをトグル |

---

## ターミナル内キーバインド

設定ファイル: `lua/plugins/user.lua`

toggleterm.nvim のターミナルバッファ内でのみ有効です。

| キー | モード | 説明 |
|---|---|---|
| `jj` | Terminal | Insert モードを抜けて Normal モードへ |
| `jk` | Terminal | Insert モードを抜けて Normal モードへ |

---

## AstroNvim 標準トグル（参考）

`<Leader>u` から始まるトグル系は AstroNvim が標準で提供しています（このリポジトリでの定義は不要）。

| キー | 説明 |
|---|---|
| `<Leader>uw` | 行折り返し (wrap) のトグル |
| `<Leader>un` | 行番号 (number) のトグル |
| `<Leader>ur` | 相対行番号 (relativenumber) のトグル |
| `<Leader>us` | スペルチェックのトグル |
| `<Leader>uf` | フォーマットオンセーブのトグル（バッファ） |
| `<Leader>uF` | フォーマットオンセーブのトグル（グローバル） |
| `<Leader>uh` | URL ハイライトのトグル |
