curl http://openlab.jp/skk/dic/SKK-JISYO.L.gz -o /tmp/shinji.gz
gunzip /tmp/shinji.gz
cp /tmp/shinji $HOME/ldic_shinji.dic
git clone git://git.osdn.jp/gitroot/npiiii/npiiii4skk.git /tmp/kyuji
cp /tmp/kyuji/euc/npiiii.l.euc $HOME/ldic_kyuji.dic

