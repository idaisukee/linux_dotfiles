#!/bin/zsh
aliases="$HOME/linux_dotfiles/tmp_aliases.sh"

echo "alias $1='$2'" >> $aliases
. $aliases
# この script は動作しない．
# $ (this_script) AA ls
# すると，
# - tmp_aliases.sh に `alias AA='ls'` と書き込まれる
# が
# - `$ alias` しても， AA は定義されていないし， `$ AA` も実行できない．
# . command の仕様を見直す必要がある．

