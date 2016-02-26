#!/usr/bin/sh

home_dir=$HOME
dotfiles_dir=$home_dir/linux_dotfiles

for files in `find $dotfiles_dir -name '.*' -printf '%f\n'` ; do
    ln -sf $dotfiles_dir/$files $home_dir/$files
done

