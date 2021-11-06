[![Discord](https://img.shields.io/badge/discord-chat-7289DA.svg?maxAge=60&style=flat-square)](https://discord.gg/gcmg9HUqX7)    [![GitHub stars](https://img.shields.io/github/stars/cbirkenbeul/docker-homelab?color=green&style=flat-square)](https://github.com/cbirkenbeul/k3s-cluster/stargazers)    [![GitHub issues](https://img.shields.io/github/issues/cbirkenbeul/docker-homelab?style=flat-square)](https://github.com/cbirkenbeul/k3s-cluster/issues)    [![GitHub last commit](https://img.shields.io/github/last-commit/cbirkenbeul/docker-homelab?color=purple&style=flat-square)](https://github.com/cbirkenbeul/k3s-cluster/commits/master)

# Docker Container für dein Homelab

Dieses Repository ist eine Sammlung von Docker-Compose Dateien für Homelabs. Als Betreiber eines [YouTube Kanals](https://youtube.com/teqqyde) das sich rund um das Thema Homelab beschäftigt, habe ich mir die Arbeit gemacht, um dir einen kleinen Start in Sachen Docker zu geben. 

Eine vollständnige Liste welche Software mit dabei ist, findet ihr im [Wiki](https://github.com/cbirkenbeul/docker-homelab/wiki/Softwareverzeichnis).

## Installation
`git clone https://github.com/cbirkenbeul/docker-homelab.git && cd docker-homelab`  

Wenn du für dein docker-homelab die globalen Variablen (Host-Domain `example.com` und das Standardverzeichnis `/var/docker` ändern möchtest starte einmal folgendes Skript.

Du kannst es auch mehrfach ausführen (zB. wenn du dein docker-homelab auf eine andere Festplatte umstellen willst, die geänderten Variablen werden auch gleich in dem Skript mit aktuallsiert.)

Variablen anpassen: `bash install.sh`

## Aufbau
Jedes Verzeichnis enthält nur eine Software. Es lassen sich natürlich auch mehrere Produkte miteinander kombinieren um so die Anzahl an docker-compose.yaml Dateien zu verringern. Sollte eine Software eine Datenbank oder ähnliches benötigten, ist diese natürlich in der entsprechenden compose Datei enthalten.

Ich verwende Traefik als Reverse Proxy. Daher sind alle Softwareprodukte schon mit den entsprechenden Labels für Traefik ausgestattet. Diese müssen nur nach bedarf angepasst werden.

Es werden keine Docker Volumes verwendet sondern bind mounts! Als Standardverzeichnis wird bei mir ````/var/docker```` genutzt. Sollte das für dich kein gangbarer Weg sein, musst du auch hier die Dateien anpassen.

# Wichtiges
Im Laufe der Zeit können sich Produkte ändern oder nicht mehr durch die Entwickler gewartet werden. Bitte habt Verständnis dafür, dass dieses Repository nicht vollständig und zu jeder Zeit korrekt sein kann. Außerdem sind vor Benutzung immer die Dummy-Passwörter durch komplexe eigene Passwörter zu ersetzen!
