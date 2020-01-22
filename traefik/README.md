# Traefik

Traefik ist ein revere proxy mit der Möglichkeit via Let's encrypt Zertifikate zu erstellen und automatisch zu verlängern. Traefik hat den Vorteil, dass es komplett via Docker steuerbar ist und somit keine weiteren Einstellungen notwendig sind.

# WICHTIG!
Die Konfiguration für Traefik zieht die Sicherheitsanforderungen ziemlich an. Hiermit eine ein Rating von A+ beim [SSLLabs Test](https://www.ssllabs.com/ssltest) erreicht.

Es werden nur aktuelle Browser unterstützt! Sollte das nicht gewollt sein, muss die 
providers.yml Datei angepasst werden. 

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

# Dashboard
Um das Dashboard nutzen zu können muss die Sektion "label" in der Docker-Compose Datei auskommentiert werden. Anschließend muss man noch Benutzer
und Passwort für das Dashboard erstellen. Hierzu ist ````apache2-utils```` erforderlich.
````bash
sudo apt install apache2-utils -y
````

Nun erstellen wir mit folgendem Befehl die Benutzer/Passwort Kombination:

````bash
echo $(htpasswd -nbB <USER> "<PASS>") | sed -e s/\\$/\\$\\$/g
````
Ihr müsst natürlich jeweils die Einträge an eure Bedürfnisse anpassen.