#! /bin/bash
# /etc/init.d/xmrstak20
# Carry out specific functions when asked to by the system
cpumun=`cat /proc/cpuinfo| grep "processor"| wc -l`
declare -i sum=$cpumun
case "$1" in
  start)
    echo "Starting miner script"
    export LD_LIBRARY_PATH=/root/xmr-stak/
    sudo tsocks /root/xmr-stak/build/bin/xmr-stak -c /root/xmr-stak/build/bin/config20.txt --cpu /root/xmr-stak/build/bin/cpu$sum.txt &
    ;;
  stop)
    echo "Stopping miner script"
    sudo killall xmr-stak
    ;;
  *)
    echo "Usage: /etc/init.d/xmrstak20 {start|stop}"
    exit 1
    ;;
esac
exit 0
