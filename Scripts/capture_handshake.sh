#!/bin/bash
# Captura el handshake WPA/WPA2 de una red específica

BSSID=$1
CHANNEL=$2
INTERFACE=wlan0mon
OUTPUT_FILE=captura

if [ -z "$BSSID" ] || [ -z "$CHANNEL" ]; then
  echo "Uso: $0 <BSSID> <Canal>"
  exit 1
fi

sudo airodump-ng --bssid $BSSID --channel $CHANNEL --write $OUTPUT_FILE $INTERFACE
