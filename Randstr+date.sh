#!/bin/bash
mydate=$(date +%H:%M:%S)
myrand=$(date|md5sum|head -c10)    
echo "$mydate$myrand" >> $HOME/sync/random_string.log    
mylast=$(echo $mydate$myrand | tail -c2)
re='^[]2468]+$'
if ! [[ $mylast =~ $re ]] ; then echo $mylast "is ODD or char"; else
echo $mylast "is EVEN"; fi
crontab -l > mycron
echo * 9 * * 1-5 $HOME/logger > dev/pts/4
sudo rm mycron
