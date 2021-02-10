#! /bin/bash
cat out.txt |  sed 's/"//g' | sed 's/,//g' |sed 's/\[//g'  |  sed 's/\]//g'| sed '/^$/d' > result.txt

for line in $(cat result.txt)


for line in $(cat result.txt)

do
echo " Server : $line"
#cho `geethan@$line`
ssh geethan@$line < ~/mydemo/Exercise1/read_servers_info.sh
done
