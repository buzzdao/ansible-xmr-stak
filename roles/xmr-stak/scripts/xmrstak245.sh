#! /bin/bash
# /etc/init.d/xmrstak22
# Carry out specific functions when asked to by the system
#rm -f /home/administrator/cpu.txt
sudo sysctl -w vm.nr_hugepages=32
case "$1" in
  start)
    echo "Starting miner script"
    export LD_LIBRARY_PATH=/root/xmr-stak245/
#    sudo tsocks xmr-stak
    sudo tsocks /root/xmr-stak245/build/bin/xmr-stak -c /root/xmr-stak245/build/bin/config.txt -C /root/xmr-stak245/build/bin/pools.txt &
    ;;
  stop)
    echo "Stopping miner script"
    sudo killall xmr-stak
    ;;
  *)
    echo "Usage: /etc/init.d/xmrstak245 {start|stop}"
    exit 1
    ;;
esac
exit 0
