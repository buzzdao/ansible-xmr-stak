#! /bin/bash
# /etc/init.d/xmrstak22
# Carry out specific functions when asked to by the system
rm -f /home/administrator/cpu.txt
case "$1" in
  start)
    echo "Starting miner script"
    export LD_LIBRARY_PATH=/root/xmr-stak22/
    sudo tsocks xmr-stak
#    sudo tsocks /root/xmr-stak22/build/bin/xmr-stak -c /root/xmr-stak22/build/bin/config.txt &
    ;;
  stop)
    echo "Stopping miner script"
    sudo killall xmr-stak
    ;;
  *)
    echo "Usage: /etc/init.d/xmrstak22 {start|stop}"
    exit 1
    ;;
esac
exit 0
