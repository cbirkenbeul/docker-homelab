[![Discord](https://img.shields.io/badge/discord-chat-7289DA.svg?maxAge=60&style=flat-square)](https://discord.gg/gcmg9HUqX7)    [![GitHub stars](https://img.shields.io/github/stars/cbirkenbeul/docker-homelab?color=green&style=flat-square)](https://github.com/cbirkenbeul/k3s-cluster/stargazers)    [![GitHub issues](https://img.shields.io/github/issues/cbirkenbeul/docker-homelab?style=flat-square)](https://github.com/cbirkenbeul/k3s-cluster/issues)    [![GitHub last commit](https://img.shields.io/github/last-commit/cbirkenbeul/docker-homelab?color=purple&style=flat-square)](https://github.com/cbirkenbeul/k3s-cluster/commits/master)

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

## C
* Calibre (incl. Calibre-Web) (https://calibre-ebook.com)
* Cloudflare-ddns

## D
* Drone.io (https://drone.io)

## F
* FreshRSS (https://freshrss.org)

## G
* Gitea (https://gitea.io)
* Guacamole (http://guacamole.apache.org)

## H
* Heimdall (https://heimdall.site)

## I
* ilias (https://www.ilias.de)
* influxdb (https://www.influxdata.com/products/influxdb/)

## M
* Matomo (https://matomo.org)
* Miniflux (Miniflux is a minimalist and opinionated feed reader. https://miniflux.app)
* Monitoring (Node Exporter, Prometheus, cAdvisor, Grafana)

## N
* Nextcloud (https://nextcloud.com)
* NTP Server

## P
* phpIPAM (https://phpipam.net)
* Pi-hole (https://pi-hole.net)
* PLEX Medien Server (https://www.plex.tv)
* Portainer (https://www.portainer.io)

## R
* Redmine (https://www.redmine.org)

## S
* Statping (https://demo.statping.com)

## T
* Tautulli (https://tautulli.com)
* Traefik (https://traefik.io)

## W
* Wallabag (https://www.wallabag.it/de/)
* Watchtower (https://github.com/containrrr/watchtower)
* Wiki.js (https://wiki.js.org)
* Wordpress (https://de.wordpress.org)
