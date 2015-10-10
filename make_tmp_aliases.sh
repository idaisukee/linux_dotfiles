#!/bin/zsh
MYaliases="$HOME/linux_dotfiles/tmp_aliases.sh"

echo "alias $1='$2'" >> $MYaliases
alias $1=$2

# この script は動作しない．
#  this_script AA ls
# すると，
# - tmp_aliases.sh に alias AA='ls' と書き込まれる
# が
# -  alias しても， AA は定義されていないし，  AA も実行できない．
# . command の仕様を見直す必要がある．

