#!/usr/local/bin/zsh

pwd=$(dirname $(realpath ${0}))

case "${1}" in
    start)
        sudo pfctl -ef ${pwd}/pf.conf
        ;;
    stop)
        sudo pfctl -d
        ;;
    *)
        echo "USAGE: ${0} [start|stop]"
        ;;
esac
