# Wordpress
Wordpress ist eine sehr beliebte Blogging Platform. Entsprechend ist natürlich auch die Nachfrage da, Wordpress in einem Docker Container laufen zu lassen. 

# Ersteinrichtung
## Empfohlene Einrichtung
Der Datenbankcontainer benötigt einige Zeit bis er vollständig initialisiert ist. Daher empfehle ich erst den DB Container einzeln zu starten.

````bash
docker-compose up wordpress-db
````

Sobald im Log die Zeile "ready for connections." kommt, kann der Container mit STRG+C gestoppt werden. Anschließend lässt sich die gesamte compose Datei starten

````bash
docker-compose up -d
````
Nun lässt sich Wordpress ganz regulär einrichten.

## Alternative Einrichtung
Du startest die compose Datei ganz regulär und wartest bis zu 2 Minuten bis du die Webseite aufrufst. Anschließend kannst du Wordpress einrichten.