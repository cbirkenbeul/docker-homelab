[![Discord](https://img.shields.io/badge/discord-chat-7289DA.svg?maxAge=60&style=flat-square)](https://discord.gg/gcmg9HUqX7)    [![GitHub stars](https://img.shields.io/github/stars/cbirkenbeul/docker-homelab?color=green&style=flat-square)](https://github.com/cbirkenbeul/k3s-cluster/stargazers)    [![GitHub issues](https://img.shields.io/github/issues/cbirkenbeul/docker-homelab?style=flat-square)](https://github.com/cbirkenbeul/k3s-cluster/issues)    [![GitHub last commit](https://img.shields.io/github/last-commit/cbirkenbeul/docker-homelab?color=purple&style=flat-square)](https://github.com/cbirkenbeul/k3s-cluster/commits/master)

# Docker Container für dein Homelab

Dieses Repository ist eine Sammlung von Docker-Compose Dateien für Homelabs. Als Betreiber eines [YouTube Kanals](https://youtube.com/teqqyde) das sich rund um das Thema Homelab beschäftigt, habe ich mir die Arbeit gemacht, um dir einen kleinen Start in Sachen Docker zu geben. 

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

# Inhaltsverzeichnis

## Analyse und Reporting
* Matomo ([Link 🔗](https://matomo.org) | [Video 📹](https://www.youtube.com/watch?v=dXPO5iWUTSg))

## Blogs und Webseiten
* Wordpress ([Link 🔗](https://de.wordpress.org))

## Collaboration
* Nextcloud ([Link 🔗](https://nextcloud.com))

## Dashboard
* Heimdall ([Link 🔗](https://heimdall.site) | [Video 📹](https://www.youtube.com/watch?v=Dmw7nAEizWk))

## Datenbanken
* influxdb ([Link 🔗](https://www.influxdata.com/products/influxdb/))

## Docker
* Portainer ([Link 🔗](https://www.portainer.io))
* Watchtower ([Link 🔗](https://github.com/containrrr/watchtower))

## Medien und Medienmanagement
* Calibre (incl. Calibre-Web) ([Link 🔗](https://calibre-ebook.com))
* PLEX Medien Server ([Link 🔗](https://www.plex.tv))
* Tautulli ([Link 🔗](https://tautulli.com))

## Netzwerktools
* Adguard Home ([Link 🔗](https://adguard.com/de/adguard-home/overview.html))
* apt-cacher-ng ([Link 🔗](https://wiki.debian.org/AptCacherNg) | [Video 📹](https://www.youtube.com/watch?v=YwkfYaAeDh8))
* Cloudflare-ddns
* NTP Server
* phpIPAM ([Link 🔗](https://phpipam.net) | [Video 📹](https://www.youtube.com/watch?v=oUAkkJJS_AY))
* Pi-hole ([Link 🔗](https://pi-hole.net))
* WireHole ([Link 🔗](https://github.com/IAmStoxe/wirehole))

## News und RSS
* FreshRSS ([Link 🔗](https://freshrss.org) | [Video 📹](https://www.youtube.com/watch?v=0r7vf2MXQYU))
* Miniflux ([Link 🔗](https://miniflux.app))

## Passwort Manager
* Bitwarden_rs ([Link 🔗](https://github.com/dani-garcia/bitwarden_rs))

## Programmierung und Code-Verwaltung
* Drone.io ([Link 🔗](https://drone.io))
* Gitea ([Link 🔗](https://gitea.io) | [Video 📹](https://www.youtube.com/watch?v=2h-gkICAcbk))

## Remotemanagement
* Guacamole ([Link 🔗](http://guacamole.apache.org) | [Video 📹](https://www.youtube.com/watch?v=vMhjvGLeHrY))

## Reverse Proxys und SSL
* Traefik ([Link 🔗](https://traefik.io))

## Sonstiges
* ilias ([Link 🔗](https://www.ilias.de))
* Monitoring (Node Exporter, Prometheus, cAdvisor, Grafana)
* Recipes ([Link 🔗](https://github.com/vabene1111/recipes))
* Statping ([Link 🔗](https://demo.statping.com))
* Wallabag ([Link 🔗](https://www.wallabag.it/de/))

## Ticketsysteme
* FreeScout ([Link 🔗](https://freescout.net/) | [Video 📹](https://www.youtube.com/watch?v=OgKFAlunEL4))
* Redmine ([Link 🔗](https://www.redmine.org))

## Wikis
* Bookstack ([Link 🔗](https://www.bookstackapp.com) | [Video 📹](https://www.youtube.com/watch?v=FarZzeePgds))
* Wiki.js ([Link 🔗](https://wiki.js.org))
