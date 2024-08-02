#!/bin/bash
# Habilita el modo monitor en una interfaz Wi-Fi

INTERFACE=wlan0
sudo airmon-ng start $INTERFACE
