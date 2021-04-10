## Wirehole (Wireguard, Pi-Hole und unbound)

Hiermit kann man eine VPN Verbindung mit Wireguard aufbauen, und zB. nur DNS Anfragen über Pi-Hole / unbound über die VPN Verbindung leiten. Dies hat den Vorteil, dass nur ein Bruchteil der Daten über den heimischen Internet-Anschluss geleitet werden. Weiterhin werden die DNS Anfragen über unbound (DNS-Resolver) zwischengespeichert.

Vorteile von Pi-Hole mit unbound sind hier zu finden [Pi-Hole unbound](https://docs.pi-hole.net/guides/dns/unbound/)

Vielen Dank an | Many Thanks to:

* [wirehole @IAmStoxe](https://github.com/IAmStoxe/wirehole)  
* [@Pi-Hole](https://github.com/pi-hole/docker-pi-hole)  
* [unbound @MatthewVance](https://github.com/MatthewVance/unbound-docker)

### Vorbereitungen:

1. Router-Port-Forwarding: 51820/udp [extern/intern auf docker-homelab Host]
2. docker-compose.yaml
   * Service > wireguard  
            - `SERVERURL` entweder über das Script `bash install.sh` die Domain anpassen, oder manuell in der `.env` deine DynDNS Domain eintragen  
            - `PEERS=3` # Wie viele Peers werden benötigt (Clients) [Name (getrennt mit Komma) oder Anzahl]  
            - `ALLOWEDIPS` # bei Bedarf anpassen, default 10.9.0.0/24 == nur DNS Anfragen über VPN
   * Service > pihole (optional)      
            -  `53:53/tcp` & `53:53/udp` einblenden, wenn pihole auch als lokaler DNS Server verwendet werden soll