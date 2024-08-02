# Aircrack-ng Tutorial

Este proyecto usa Aircrack-ng en auditorías de seguridad de redes Wi-Fi. Proporciona scripts para automatizar el proceso de captura de paquetes y cracking de contraseñas WPA/WPA2.

## Requisitos

- Adaptador Wi-Fi compatible con modo monitor
- Aircrack-ng instalado (`sudo apt install aircrack-ng`)

## Uso

1. Habilita el modo monitor:

   ```bash
   ./scripts/enable_monitor_mode.sh

2. Captura el handshake:
	```bash
	./scripts/capture_handshake.sh <BSSID> <Canal>

3. Realiza un ataque de desautenticación:

	```bash
	./scripts/deauth_attack.sh <BSSID> <MAC del Cliente>

4. Descifra la contraseña:

	```bash
	./scripts/crack_password.sh <Diccionario> <BSSID>