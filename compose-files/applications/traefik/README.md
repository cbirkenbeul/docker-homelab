# Traefik

Traefik ist ein reverse proxy mit der Möglichkeit via Let's encrypt Zertifikate zu erstellen und automatisch zu verlängern. Traefik hat den Vorteil, dass es komplett via Docker steuerbar ist und somit keine weiteren Einstellungen notwendig sind.

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
Um das Dashboard nutzen zu können muss die Sektion "label" in der Docker-Compose Datei auskommentiert werden. Es ist darauf zu achten, dass die Einrückungen stimmen; dazu kann sich an den anderen Sektionen orientiert werden. Anschließend muss man noch Benutzer
und Passwort für das Dashboard erstellen. Hierzu ist ````apache2-utils```` erforderlich.
````bash
sudo apt install apache2-utils -y
````

Nun erstellen wir mit folgendem Befehl die Benutzer/Passwort Kombination (die spitzen Klammern <> sind ebenfalls zu ersetzen): 

````bash
echo $(htpasswd -nbB <USER> "<PASS>") | sed -e s/\\$/\\$\\$/g
````
 Nachdem der Befehl ausgeführt wurde, gibt die Konsole eine Zeile mit dem generierten Benutzernamen:Passphrase aus. Diese Zeile ist zu kopieren und in die docker-compose.yaml bei folgendem Label einzutragen:

````bash
- "traefik.http.middlewares.api-auth.basicauth.users=user:generatedPass"
````

Des Weiteren ist die Domain anzupassen:

````bash
- "traefik.http.routers.api.rule=Host(`traefik.example.com`) && PathPrefix(`/dashboard`)"
````

Anschließend kann der Container gestartet werden. Das Dashboard ist unter der gewählten URL und Port und dem Unterverzeichnis "/dashboard" erreichbar. Abgeleitet aus dem aktuellen Beispiel:
https://traefik.example.com:8180/dashboard