DOTFILES_DIR=$HOME/linux_dotfiles

ln -s $HOME/.zplug/repos/sorin-ionescu/prezto $HOME/.zprezto
mkdir oldzshdot
cp .zshrc oldzshdot

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
	ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

rm $HOME/.zshrc
ln -s $DOTFILES_DIR/.zshrc $HOME/.zshrc
