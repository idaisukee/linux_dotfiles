curl -L 'https://github.com/github/hub/releases/download/v2.3.0-pre9/hub-linux-386-2.3.0-pre9.tgz' -o /tmp/hub.tgz
mkdir /tmp/hub
tgz=/tmp/hub.tgz
tar xzvf $tgz -C /tmp/hub
sudo /tmp/hub/hub-linux-386-2.3.0-pre9/install
