ssh    geethan@51.144.240.238

sudo su

tail -f /var/log/syslog.log 
ls /etc/redis/redis.conf 
vi  /etc/redis/redis.conf 
vi /etc/systemd/system/redis.service

systemctl status redis
systemctl restart redis.service
journalctl -xe
tail -f /var/log/redis/redis-server.log
/usr/bin/redis-server /etc/redis/redis.conf
cat os-release 
   

After the verification , I was unable to fix the problem.But, I know the problem belongs to the redis.conf file. Finally, I have installed redis on another machine  and found differences in both configuration files(log file location in redis.conf) and fixed the problem.

diff error_redis.conf   mymachine_redis.conf
diff error_redis.service   mymachine_redis.service


systemctl restart redis.service







