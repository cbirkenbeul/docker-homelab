# docker-homelab

Dieses Repository ist eine Sammlung von Docker-Compose Dateien für Homelabs. Als Betreiber als YouTube Kanals das sich rund um das Thema Homelab beschäftigt habe ich mir die Arbeit gemacht um dir einen kleinen Start in Sachen Docker zu geben. 

## Aufbau
Jedes Verzeichnis enthält nur eine Software. Es lassen sich natürlich auch mehrere Produkte miteinander kombinieren um so die Anzahl an docker-compose.yaml Dateien zu verringern. Sollte eine Software eine Datenbank oder ähnliches benötigten, ist diese natürlich in der entsprechenden compose Datei enthalten.

Ich verwende Traefik als Reverse Proxy. Entsprechend sind alle Softwareprodukte schon mit den entsprechenden Labels für Traefik ausgestattet. Diese müssen nur nach bedarf angepasst werden.

Es werden keine Docker Volumes verwendet sondern bind mounts! Als Standardverzeichnis wird bei mir /var/docker genutzt. Sollte das für dich kein gangbarer Weg sein, musst du auch hier die Dateien anpassen.

# Wichtiges
Im Laufe der Zeit können sich Produkte ändern oder nicht mehr durch die Entwickler gewartet werden. Bitte habt verständnis dafür, dass dieses Repository nicht vollständig und zu jeder Zeit korrekt sein kann. Außerdem sind vor Benutzung immer die Dummy-Passwörter durch komplexe eigene Passwörter zu ersetzen!

# Liste
* Traefik
* Portainer