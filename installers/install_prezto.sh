# run this script after `zplug install`

ln -s $HOME/.zplug/repos/sorin-ionescu/prezto $HOME/.zprezto

sec=`date '+%s'`
dir=$HOME/oldzdot$sec
mkdir $dir
mv $HOME/.zshrc $dir

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

mv $dir/.zshrc $HOME
