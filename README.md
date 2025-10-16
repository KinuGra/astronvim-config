# 使い方

`git clone https://github.com/KinuGra/astronvim-config.git ~/.config/nvim`

# 注意事項

AstroNvim v5 は Lazy.nvim ベースで、設定は lua/plugins/\*.lua に書く。
lua/user/init.lua は使われない。
各設定ファイルは return { ... } でプラグイン定義を返す形式。
（例：toggleterm の on_open に vim.keymap.set() を追加して jj でノーマルモード復帰）

# AstroNvim Template

**NOTE:** This is for AstroNvim v5+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/<your_user>/<your_repository> ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```
