curl -L 'https://github.com/belluzj/fantasque-sans/releases/download/v1.7.1/FantasqueSansMono.tar.gz' -o /tmp/fantasque.tgz
mkdir /tmp/fantasque
tgz=/tmp/fantasque.tgz
tar xzvf $tgz -C /tmp/fantasque
sudo cp -r fantasque /usr/share/fonts/truetype
