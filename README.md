# Oempro MX Server

This module will let you to run a link tracker proxy in front your Octeth server. It's powered by [Caddy server](https://caddyserver.com/).

## Production Server Installation

```shell
apt update
apt install -y software-properties-common sharutils apt-utils iputils-ping telnet git unzip zip openssl vim wget debconf-utils cron supervisor mysql-client docker.io ufw make
curl -L "https://github.com/docker/compose/releases/download/v2.15.1/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version
mkdir /opt/oempro-link-proxy
cd /opt/oempro-link-proxy
git clone https://github.com/octeth/oempro-link-proxy.git .
```

