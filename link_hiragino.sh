for i in /usr/share/fonts/opentype/hiragino/*.otf
do
	basename=$(basename $i)
	dest=/usr/share/texlive/texmf-dist/fonts/opentype/public/hiragino/$basename
	ln -s $i $dest
done
