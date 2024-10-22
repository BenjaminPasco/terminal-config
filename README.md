# terminal-config

1. Terminal (Kitty)

install:
require gcc and go compiler see website for more precise doc
git clone https://github.com/kovidgoyal/kitty.git && cd kitty
./dev.sh build
kitty now available with kitty/launcher/kitty

increase font size:
open preferences update fontsize, save and reload preferences

update theme:
https://github.com/rose-pine/kitty
kitty +kitten themes --reload-in=all Rosé Pine

set font:
todo

2. Terminal multiplexer (Tmux)

install:
https://github.com/tmux/tmux/wiki/Installing instructions
brew install tmux install tmux from brew on macos

configure:
copy .tmux.conf to ~/.tmux.conf copy file from here to home directory
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm need to add tmp to install plugin from the config file
https://github.com/rose-pine/tmux (theme for tmux in line with terminal theme, is included directly in the config file)

3. Editor (Neovim)

install:
https://github.com/neovim/neovim/blob/master/INSTALL.md
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-x86_64.tar.gz
tar xzf nvim-macos-x86_64.tar.gz
./nvim-macos-x86_64/bin/nvim

4. Nvim config in dot/nvim
git clone https://github.com/LazyVim/starter ~/.config/nvim

5. Keymaps
<Space>/ search current buffer
<Space>f telescope
<Space>t trouble
<Space>h harpoon
(v/d)(ai)(foctd<) select/delete outer/inner function/codeblock/class/text/digit/tag
s flash
