#!/bin/bash

memory(){
#============memory==============

m=`free -m | awk 'NR==2{printf ": %s/%sMB %.2f%%\n", $3,$2,$3*100/$2 }'`
m1=`echo "$m "|awk {'print $4'}`
set m2=$m1
set m3=60.0
if [ $m3 -gt $m2 ]; then
echo "$(tput bold) $(tput setaf 2) Memory usage $m looks Normal $(tput sgr 0)"
echo
else
echo "$(tput bold) $(tput setaf 2)Memory usage $m looks high, please check the server $(tput sgr 0)"
fi
}
memory
