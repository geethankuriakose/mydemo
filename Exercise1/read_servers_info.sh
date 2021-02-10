#! /bin/bash
echo 'disk usage' 
df -h 
echo 'Network usage ' 
vnstat 
echo 'Cpu usage ' 
iostat -c 
