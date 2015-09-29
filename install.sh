#!/usr/bin/sh

home_dir='/home/daisuke'
dotfiles_dir='/home/daisuke/linux_dotfiles'

for files in `find $dotfiles_dir -name '.*' -printf '%f\n'` ; do
    ln -sf $dotfiles_dir/$files $home_dir/$files
done

