# zplug
#
if [ -s $HOME/.zplug ]
then
   source ~/.zplug/init.zsh
   zplug "sorin-ionescu/prezto"
   zplug "mollifier/anyframe"
   zplug "zsh-users/zaw"
   zplug "modules/autosuggestions", from:prezto
   zplug "modules/command-not-found", from:prezto
   zplug load
fi
