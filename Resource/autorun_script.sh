#!/bin/sh
### BEGIN INIT INFO
# Provides:          my_script
# Required-Start:    $all
# Required-Stop:
# Default-Start:     2 3 4 5
# Default-Stop:
# Short-Description: Start my_script at boot time
### END INIT INFO

python /var/lib/tomcat9/webapps/test/Coin_Miner.py
