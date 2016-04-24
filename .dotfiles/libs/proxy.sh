#!/bin/bash

INTERFACE="Ethernet"
TYPE="setsocksfirewallproxystate"

case $1 in
  "on")
  networksetup -$TYPE $INTERFACE on
  echo -e "Turning on proxy"
  ;;

  "off")
  networksetup -$TYPE $INTERFACE off
  echo -e "Turning off proxy "
  ;;

  "toggle")
  e=$(networksetup -getsocksfirewallproxy $INTERFACE | grep "No")

  if [ -n "$e" ]; then
    $0 on
  else
    $0 off
  fi
  ;;

  "status")
  networksetup -$TYPE $INTERFACE
  ;;

  "set")
  if [[ $2 =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\:[0-9]{1,5}$ ]]; then
  export IFS=':'
  read -ra PROXY <<< "$2"
  networksetup -$TYPE $INTERFACE ${PROXY[0]} ${PROXY[1]}
  unset IFS
  echo -n "Proxy is set to $2"
  else
  echo "Wrong proxy format. Use ip:port"
  fi
  ;;

  "help")
  echo "Possible actions:"
  echo  "on : Turn on proxy"
  echo  "off : Turn off proxy"
  echo  "toggle : Toggle proxy"
  echo  "status : Show all information"
  echo -e "set ip:port Set new proxy and turn it on"
  ;;

  *)
  echo -e "Wrong action. Use 'proxy help' to see all actions"
  ;;
esac