#!/bin/bash

PATH_DATA=/var/docker
BASE_URL=example.com

read -p "Gebe den relativen Pfad für die persistenten Daten an [default ${PATH_DATA}]: " PATH_DATA_NEW
read -p "Gebe die Basis URL für dein docker-homelab ein [default ${BASE_URL}]:         " BASE_URL_NEW

# ändere docker-homelab Data Pfad
find . -name docker-compose* -exec sed -i 's|'${PATH_DATA}'|'${PATH_DATA_NEW}'|g' + {} \;

# ändere PATH_DATA in install.sh
find . -name install.sh -exec sed -i 's|'${PATH_DATA}'|'${PATH_DATA_NEW}'|g' + {} \;

# ändere BASE_URL in .env 
find . -name .env -exec sed -i 's/'${BASE_URL}'/'${BASE_URL_NEW}'/g' {} \;
    
# ändere BASE_URL in install.sh
find . -name install.sh -exec sed -i 's/'${BASE_URL}'/'${BASE_URL_NEW}'/g' {} \;
