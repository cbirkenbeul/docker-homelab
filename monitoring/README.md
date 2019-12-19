# Monitoring

Die Monitoring Container überwachen den Docker Host sowie alle Docker Container. Mittels Grafana gibt es dazu ein ansprechendes Dashboard um alle Container und Dienst im Auge zu behalten.

![Grafana Dashboard](https://raw.githubusercontent.com/cbirkenbeul/docker-homelab/master/monitoring/grafana/grafana-dashboard.png)

# Installation

## Grafana Speicherort
Der Speicherort für Grafana muss vorher angelegt werden, damit der Start des Containers funktioniert. Ich gehe hier davon aus, dass ihr den Standarduser des Linux nehmt (User ID 1000):
````bash
mkdir /var/docker/data/monitoring/grafana
chown 1000:1000 /var/docker/data/monitoring/grafana
````

## Grafana Datenquelle einrichten
Nach dem Start aller Container öffnet ihr das Grafana Webinterface und meldet euch mit ````admin/admin```` an.  
Anschließend fügt ihr eine neue "data source" hinzu. Name könnt ihr frei vergeben. Als URL verwendet ihr ````http://mon_prometheus:9090````. Nun unten auf "Save & Test" klicken. Ihr solltet ein grünes Feld mit der Bestätigung des erfolgreichen Verbindens bekommen.

## Grafana Beispiel Dashboard
Solltest du dir nicht ein eigenes Dashboard erstellen wollen, kannst du mein vordefiniertes importieren.  
Hierzu gehst du links auf Dashboard -> Manage -> Import  
In das große Feld kopierst du den vollständigen Inhalt der [dashboard.json](grafana/dashboard.json) Datei hinein.