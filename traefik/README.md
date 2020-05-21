# Traefik

Traefik is a revere proxy with the possibility to create and automatically renew certificates via Let's encrypt. Traefik has the advantage that it is completely controllable via Docker and therefore no further settings are necessary.

# IMPORTANT!
The configuration for Traefik pretty much attracts the security requirements. Hereby achieved an A + rating in the [SSLLabs Test] (https://www.ssllabs.com/ssltest).

Only current browsers are supported! If this is not wanted, the
providers.yml file can be adjusted.

# Preparation
In order to use Traefik with my files, the following must be carried out

## Create network
`` bash
docker network create traefik_proxy
''

## ACME directory
Traefik stores all necessary information about the certificates as JSON in the ACME directory. This directory needs special rights.

`` bash
cd config / ACME
chmod 600 acme.json
''

# Dashboard
In order to be able to use the dashboard, the section "label" in the Docker Compose file must be commented out. Then you have to add users
and create a password for the dashboard. This requires `` `` apache2-utils````.
`` '' bash
sudo apt install apache2-utils -y
`` ''

Now we create the user / password combination with the following command:

`` '' bash
echo $ (htpasswd -nbB <USER> "<PASS>") | sed -e s / \\ $ / \\ $ \\ $ / g
`` ''
Of course you have to adapt the entries to your needs.
