#!/bin/bash
# Intenta descifrar la contraseña WPA/WPA2 usando un diccionario

CAPTURE_FILE=captura.cap
DICTIONARY_FILE=$1
BSSID=$2

if [ -z "$DICTIONARY_FILE" ] || [ -z "$BSSID" ]; then
  echo "Uso: $0 <Diccionario> <BSSID>"
  exit 1
fi

sudo aircrack-ng -w $DICTIONARY_FILE -b $BSSID $CAPTURE_FILE
