#! /bin/sh
# /etc/init.d/proxy
# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting proxy script"
    ssr start &
    ;;
  stop)
    echo "Stopping proxy script"
    ssr stop
    ;;
  *)
    echo "Usage: /etc/init.d/proxy {start|stop}"
    exit 1
    ;;
esac
exit 0
