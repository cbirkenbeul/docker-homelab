# Traefik

Traefik ist ein revere proxy mit der Möglichkeit via Let's encrypt Zertifikate zu erstellen und automatisch zu verlängern. Traefik hat den Vorteil, dass es komplett via Docker steuerbar ist und somit keine weiteren Einstellungen notwendig sind.

# Vorbereitung
Um Traefik mit meinen Dateien nutzen zu können muss folgendes durchgeführt werden

## Netzwerk anlegen
```bash
docker network create traefik_proxy
```

## ACME Verzeichnis
Traefik speichert alle notwendigen Informationen zu den Zertifikaten als JSON im ACME Verzeichnis. Dieses Verzeichnis benötigt besondere Rechte.

```bash
cd config/ACME
chmod 600 acme.json
```
