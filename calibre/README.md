# Calibre
Calibre ist eine eBook Verwaltungssoftware bei dem diese mittels Agenten ausgelesen werden und entsprechende Metatags hinzugefügt werden können.
Calibre an sich wird per JAVA Browser bedient. Das Addon Calibre-Web sorgt für ein anständiges Webinterface.

![Calibre Screenshot](https://raw.githubusercontent.com/cbirkenbeul/docker-homelab/master/ressources/img/calibre.png)

## Voraussetzungen
Unter `/books` muss eine `metadata.db` vorhanden sein. Entweder verwendet man eine vorhandene aus Calibre oder man lässt sie über den Container erstellen: 

```sh
docker exec -it calibre-web /bin/bash -c "cd /app/calibre/bin && calibredb restore_database --really-do-it --with-library /books"
```
Ggf. müssen danach noch die Ordnerrechte entsprechend angepasst werden. Im Webinterface lässt sich danach `/books` als DB eintragen.
