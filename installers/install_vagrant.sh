sudo apt-get remove --auto-remove vagrant
rm -r ~/.vagrant.d
cd /tmp
wget https://releases.hashicorp.com/vagrant/2.1.2/vagrant_2.1.2_x86_64.deb
sudo dpkg -i vagrant_2.1.2_x86_64.deb
