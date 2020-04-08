[![Donate](https://img.shields.io/badge/Steady-Spenden-orange.svg)](https://steadyhq.com/de/teqqyde)
[![Donate](https://img.shields.io/badge/PayPal-Spenden-green.svg?logo=PayPal&style=flat-square)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=NNWSYA5KFESGG&source=url)
[![BuyUsCoffee](https://img.shields.io/badge/BuyMeACoffee-Spenden-ff813f.svg?logo=CoffeeScript&style=flat-square)](https://buymeacoff.ee/teqqyde)

# Docker Container für dein Homelab

Dieses Repository ist eine Sammlung von Docker-Compose Dateien für Homelabs. Als Betreiber eines [YouTube Kanals](https://youtube.com/teqqyde) das sich rund um das Thema Homelab beschäftigt, habe ich mir die Arbeit gemacht, um dir einen kleinen Start in Sachen Docker zu geben. 

## Aufbau
Jedes Verzeichnis enthält nur eine Software. Es lassen sich natürlich auch mehrere Produkte miteinander kombinieren um so die Anzahl an docker-compose.yaml Dateien zu verringern. Sollte eine Software eine Datenbank oder ähnliches benötigten, ist diese natürlich in der entsprechenden compose Datei enthalten.

Ich verwende Traefik als Reverse Proxy. Daher sind alle Softwareprodukte schon mit den entsprechenden Labels für Traefik ausgestattet. Diese müssen nur nach bedarf angepasst werden.

Es werden keine Docker Volumes verwendet sondern bind mounts! Als Standardverzeichnis wird bei mir ````/var/docker```` genutzt. Sollte das für dich kein gangbarer Weg sein, musst du auch hier die Dateien anpassen.

# Wichtiges
Im Laufe der Zeit können sich Produkte ändern oder nicht mehr durch die Entwickler gewartet werden. Bitte habt Verständnis dafür, dass dieses Repository nicht vollständig und zu jeder Zeit korrekt sein kann. Außerdem sind vor Benutzung immer die Dummy-Passwörter durch komplexe eigene Passwörter zu ersetzen!

# Software
Alphabetisch sortiert
## A
* apt-cacher-ng (https://wiki.debian.org/AptCacherNg)

## B
* Bitwarden_rs (https://github.com/dani-garcia/bitwarden_rs)
* Bookstack (https://www.bookstackapp.com)

## F
* FreshRSS (https://freshrss.org)

## G
* Gitea (https://gitea.io)
* Guacamole (http://guacamole.apache.org)

## H
* Heimdall (https://heimdall.site)

## I
* ilias (https://www.ilias.de)

## M
* Monitoring (Node Exporter, Prometheus, cAdvisor, Grafana)

## N
* Nextcloud (https://nextcloud.com)

## O
* Ouroboros (https://github.com/pyouroboros/ouroboros)

## P
* phpIPAM (https://phpipam.net)
* Pi-hole (https://pi-hole.net)
* PLEX Medien Server (https://www.plex.tv)
* Portainer (https://www.portainer.io)

## T
* Tautulli (https://tautulli.com)
* Traefik (https://traefik.io)

## W
* Wordpress (https://de.wordpress.org)