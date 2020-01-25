# GITEA
Gitea ist eine Software für Versionverwaltung von Quellcode, ähnlich zu Github. Gitea ist dabei sehr schlank und auf das notwendige
beschränkt.

# WICHTIG!
Traefik routet kein SSH traffik und somit ist gitea nur via HTTPS erreichbar. Wenn du gitea offline betreibst wäre es möglich, durch 
exposed Ports auch SSH anzusprechen.

# Installation
Nach dem Starten der Container und aufrufen des Webfrontends klickt man oben rechts auf anmelden. Anschließend öffnet sich das Installationssetup.
Die Datenbankeinstellungen sind schon vordefiniert und sollten korrekt sein. Andernfalls sind u. a. die environment variables falsch.
Unter den allgemeinen Einstellungen MUSS die "Gitea-Basis-URL" auf die URL angepasst werden unter der gitea erreichbar sein soll. Dies ist wichtig damit
alle URLS korrekt klickbar sind.