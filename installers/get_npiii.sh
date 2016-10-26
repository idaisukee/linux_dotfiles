curl "https://sites.google.com/site/tidas1974/npiii/np103skk.tgz?attredirects=0&d=1" -o /tmp/html
real_addr=$(cat /tmp/html | grep HREF | cut -d'"' -f 2)
mkdir /tmp/npiii
tgz=/tmp/npiii/npiii.tgz
curl $real_addr -o $tgz
tar xzvf $tgz -C /tmp/npiii
ldic=/tmp/npiii/ldic_kyuji.dic
cat /tmp/npiii/npiii.l.jis | nkf -Je > $ldic
mv $ldic $HOME
