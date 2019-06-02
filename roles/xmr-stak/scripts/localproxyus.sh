#! /bin/sh
# /etc/init.d/proxy
# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting proxy script"
    export LD_LIBRARY_PATH=/usr/local/bin/
    sudo ssr start &
    ;;
  stop)
    echo "Stopping proxy script"
    sudo ssr stop
    ;;
  *)
    echo "Usage: /etc/init.d/proxy {start|stop}"
    exit 1
    ;;
esac
exit 0
