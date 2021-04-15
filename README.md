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
* [Matomo](https://github.com/cbirkenbeul/docker-homelab/tree/master/analyse-und-reporting/matomo) ([Link 🔗](https://matomo.org) | [Video 📹](https://www.youtube.com/watch?v=dXPO5iWUTSg))

## Blogs und Webseiten
* [Wordpress](https://github.com/cbirkenbeul/docker-homelab/tree/master/blogs-und-webseiten/wordpress) ([Link 🔗](https://de.wordpress.org))

## Collaboration
* [Nextcloud](https://github.com/cbirkenbeul/docker-homelab/tree/master/collaboration/nextcloud) ([Link 🔗](https://nextcloud.com))

## Dashboard
* [Heimdall](https://github.com/cbirkenbeul/docker-homelab/tree/master/Dashboard/heimdall) ([Link 🔗](https://heimdall.site) | [Video 📹](https://www.youtube.com/watch?v=Dmw7nAEizWk))

## Datenbanken
* [influxdb](https://github.com/cbirkenbeul/docker-homelab/tree/master/datenbanken/influxdb) ([Link 🔗](https://www.influxdata.com/products/influxdb/))

## Docker
* [Portainer](https://github.com/cbirkenbeul/docker-homelab/tree/master/docker/portainer) ([Link 🔗](https://www.portainer.io))
* [Watchtower](https://github.com/cbirkenbeul/docker-homelab/tree/master/docker/watchtower) ([Link 🔗](https://github.com/containrrr/watchtower))

## Medien und Medienmanagement
* [Calibre (incl. Calibre-Web)](https://github.com/cbirkenbeul/docker-homelab/tree/master/medien-und-medienmanagement/calibre)) ([Link 🔗](https://calibre-ebook.com))
* [PLEX Medien Server](https://github.com/cbirkenbeul/docker-homelab/tree/master/medien-und-medienmanagement/plex) ([Link 🔗](https://www.plex.tv))
* [Tautulli](https://github.com/cbirkenbeul/docker-homelab/tree/master/medien-und-medienmanagement/tautulli) ([Link 🔗](https://tautulli.com))

## Netzwerktools
* [Adguard Home](https://github.com/cbirkenbeul/docker-homelab/tree/master/netzwerktools/adguard-home) ([Link 🔗](https://adguard.com/de/adguard-home/overview.html))
* [apt-cacher-ng](https://github.com/cbirkenbeul/docker-homelab/tree/master/netzwerktools/apt-cacher-ng) ([Link 🔗](https://wiki.debian.org/AptCacherNg) | [Video 📹](https://www.youtube.com/watch?v=YwkfYaAeDh8))
* [Cloudflare-ddns](https://github.com/cbirkenbeul/docker-homelab/tree/master/netzwerktools/cloudflare-ddns) 
* [NTP Server](https://github.com/cbirkenbeul/docker-homelab/tree/master/netzwerktools/ntp-server) ([Link 🔗](https://github.com/cturra/docker-ntp))
* [phpIPAM](https://github.com/cbirkenbeul/docker-homelab/tree/master/netzwerktools/phpipam) ([Link 🔗](https://phpipam.net) | [Video 📹](https://www.youtube.com/watch?v=oUAkkJJS_AY))
* [Pi-hole](https://github.com/cbirkenbeul/docker-homelab/tree/master/netzwerktools/pi-hole) ([Link 🔗](https://pi-hole.net))
* [WireHole](https://github.com/cbirkenbeul/docker-homelab/tree/master/netzwerktools/wirehole) ([Link 🔗](https://github.com/IAmStoxe/wirehole))

## News und RSS
* [FreshRSS](https://github.com/cbirkenbeul/docker-homelab/tree/master/news-und-rss/freshrss) ([Link 🔗](https://freshrss.org) | [Video 📹](https://www.youtube.com/watch?v=0r7vf2MXQYU))
* [Miniflux](https://github.com/cbirkenbeul/docker-homelab/tree/master/news-und-rss/miniflux) ([Link 🔗](https://miniflux.app))

## Passwort Manager
* [Bitwarden_rs](https://github.com/cbirkenbeul/docker-homelab/tree/master/password-manager/bitwarden_rs) ([Link 🔗](https://github.com/dani-garcia/bitwarden_rs))

## Programmierung und Code-Verwaltung
* [Drone.io](https://github.com/cbirkenbeul/docker-homelab/tree/master/programmierung-und-code-verwaltung/droneio) ([Link 🔗](https://drone.io))
* [Gitea](https://github.com/cbirkenbeul/docker-homelab/tree/master/programmierung-und-code-verwaltung/gitea) ([Link 🔗](https://gitea.io) | [Video 📹](https://www.youtube.com/watch?v=2h-gkICAcbk))

## Remotemanagement
* [Guacamole](https://github.com/cbirkenbeul/docker-homelab/tree/master/remotemanagement/guacamole) ([Link 🔗](http://guacamole.apache.org) | [Video 📹](https://www.youtube.com/watch?v=vMhjvGLeHrY))

## Reverse Proxys und SSL
* [Traefik](https://github.com/cbirkenbeul/docker-homelab/tree/master/reverse-proxy-und-ssl/traefik) ([Link 🔗](https://traefik.io))

## Sonstiges
* [ilias](https://github.com/cbirkenbeul/docker-homelab/tree/master/sonstiges/ilias) ([Link 🔗](https://www.ilias.de))
* [Monitoring (Node Exporter, Prometheus, cAdvisor, Grafana)](https://github.com/cbirkenbeul/docker-homelab/tree/master/sonstiges/monitoring)
* [Recipes](https://github.com/cbirkenbeul/docker-homelab/tree/master/sonstiges/recipes) ([Link 🔗](https://github.com/vabene1111/recipes))
* [Statping](https://github.com/cbirkenbeul/docker-homelab/tree/master/sonstiges/statping) ([Link 🔗](https://demo.statping.com))
* [Wallabag](https://github.com/cbirkenbeul/docker-homelab/tree/master/sonstiges/wallabag) ([Link 🔗](https://www.wallabag.it/de/))

## Ticketsysteme
* [FreeScout](https://github.com/cbirkenbeul/docker-homelab/tree/master/ticketsysteme/freescout) ([Link 🔗](https://freescout.net/) | [Video 📹](https://www.youtube.com/watch?v=OgKFAlunEL4))
* [Redmine](https://github.com/cbirkenbeul/docker-homelab/tree/master/ticketsysteme/redmine) ([Link 🔗](https://www.redmine.org))

## Wikis
* [Bookstack](https://github.com/cbirkenbeul/docker-homelab/tree/master/wiki/bookstack) ([Link 🔗](https://www.bookstackapp.com) | [Video 📹](https://www.youtube.com/watch?v=FarZzeePgds))
* [Wiki.js](https://github.com/cbirkenbeul/docker-homelab/tree/master/wiki/wiki-js) ([Link 🔗](https://wiki.js.org))
