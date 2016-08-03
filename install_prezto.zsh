ln -s $HOME/.zplug/repos/sorin-ionescu/prezto $HOME/.zprezto
mkdir oldzshdot
cp .zshrc .zlogin .zlogout .zprofile .zshenv oldzshdot

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
	ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
