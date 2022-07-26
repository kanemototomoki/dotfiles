#!/bin/bash

set -u

# 実行場所のディレクトリを取得
THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR
git submodule init
git submodule update

echo "start setup..."
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".gitmodules" ] && continue

    ln -snfv ~/dotfiles/"$f" ~/
done

# shellの設定
[ -e ~/dotfiles/.config/starship.toml] || mkdir -p ~/.config && ln -snfv ~/dotfiles/.config/starship.toml ~/.config/

[ -e ~/.gitconfig.local ] || cp ~/dotfiles/.gitconfig.local.template ~/.gitconfig.local

cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END
