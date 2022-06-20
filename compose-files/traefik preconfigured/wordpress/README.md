# Wordpress
Wordpress ist eine sehr beliebte Blogging Platform. Entsprechend ist natürlich auch die Nachfrage da, Wordpress in einem Docker Container laufen zu lassen. 

# Einfache Installation
Für die einfach Installation ist die Standard ````docker-compose.yaml```` Datei gedacht. Diese besteht aus einer minimalen Konfiguration für Datenbank und Wordpress.
Diese Installation ist für gängige kleine Seiten gut ausreichend. 

# Erweiterte Installation
Wordpress kann auch in statischer und dynamischer Konfiguration aufgeteilt werden. Die ````docker-compose.fpm.yaml```` spiegelt diese Installationsvariante wieder.
Hierfür MUSS in der ````config/default.conf```` Datei die Server URL unter ````server_name```` angepasst werden.

Nach der Installation von Wordpress passt man nun für REDIS die ````wp_config.php```` an. In der DEFINE Sektion wird die Zeile
`````
define( 'WP_REDIS_HOST',    'wordpress-cache');
`````
hinzugefügt. Nun installiert man noch das Plugin [Redis Object Cache](https://de.wordpress.org/plugins/redis-cache/) und aktiviert dies.

Mit dem default Theme komme ich bei dieser Konfiguration auf einen Pagespeed Score bei Google von 99 bis 100. Um diesen ebenfalls zu erhalten wird natürlich auch ein 
schneller Hoster mit guter Anbindung benötigt. 

# Credits:
Die Idee und Empfehlung kam von @nicokaiser. Vielen Dank dafür.

Einstellungen der default.conf wurden von einem NGINX [Blogbeitrag](https://www.nginx.com/blog/9-tips-for-improving-wordpress-performance-with-nginx/) empfohlen.