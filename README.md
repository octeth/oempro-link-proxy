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
cp Caddyfile.example Caddyfile
```

Edit `Caddyfile` and configure it according to your needs.

```shell
make build
make run
```

That's it! The next step is to setup a domain with A DNS record pointing to your server IP address. For example;

```text
link.mydomain.com A <octeth_link_proxy_server_ip_address>
```

You can setup your link tracking domains pointing to the domain above using a CNAME DNS record. For example, if you are going to set `link.test.com` as your link tracking domain, the following DNS record must be set:

```text
link.test.com CNAME link.mydomain.com
```

