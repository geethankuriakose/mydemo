#! /bin/bash
cat out.txt |  sed 's/"//g' | sed 's/,//g' |sed 's/\[//g'  |  sed 's/\]//g'| sed '/^$/d' > result.txt

for line in $(cat result.txt)

do
#echo " Server : $line"
#echo 'ssh geethan@$line'
`ssh geethan@$line` ./read_servers_info.sh
done

