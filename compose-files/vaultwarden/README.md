# Bitwarden_rs
Bitwarden_rs ist ein fork des beliebten Passwort Managers Bitwarden. Dieser Fork hat den Vorteil ohne schwere Microsoft SQL Server Instanz auzukommen.
Daher besteht dieser Service nur aus einem Container und nicht auf einer vielzahl.

# WICHTIG!
Wenn ihr Probleme mit Bitwarden habt, bitte nicht im offiziellen Forum posten, sondern direkt beim [Entwickler](https://github.com/dani-garcia/bitwarden_rs)

# Attachments herunterladen
Mit der Standardkonfiguration kann man Attachments zwar hochladen & löschen, nicht aber herunterladen.
Nachdem der Container das erste Mal gestartet wurde, sollte eine Konfigurationsdatei `config.json` im `/var/docker/bitwarden` Verzeichnis liegen.
Diese muss mit *root* Rechten bearbeitet und der Eintrag `domain: http://localhost` durch die gewünschte domain erstetzt werden (z.B. `https://bitwarden.example.com`).
