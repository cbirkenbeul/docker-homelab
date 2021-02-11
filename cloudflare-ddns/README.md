# Cloudflare DYNDNS Updater
Wenn du deine DNS Management bei Cloudflare betreibst, kannst du mit diesem Container deine private dynamische IP-Adresse dort updaten lassen.

# Installation
## Anforderungen
Deine Domain sollte wie oben beschrieben durch Cloudflare gemanagt werden. Du kannst sie natürlich irgendwo anders erworben, DNS Einstellungen müssen
aber dort durchgeführt werden.

## API Key erstellen
In deinem Cloudflare Account klickst du rechts oben auf deinen Account Namen -> Mein Profil -> API Token
Hier erstellst du ein neuen Token -> Benutzerdefinierter Token (ganz unten)  
**Name des Tokens** kannst du frei wählen  
**Berechtigungen** Stellst du von Konto auf *Zone* um. Im mittleren Dropdown *DNS* und hinten *bearbeiten*
**Zonenressourcen** von *Alle Zonen* auf die, die du für dein Homelab verwendest

Dann auf Zusammenfassung. Den Token auf der nächsten Seite trägst du in die .env Datei unter *CF_API_TOKEN* ein.

In der Datei passt du auch Domäne und Subdomäne deinen wünschen entsprechend an.
