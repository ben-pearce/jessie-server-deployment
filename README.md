# 🏠 Home Server Deployment

This repository holds my docker compose files and configuration files for services I host on my homelab. For a while I have been experimenting with different recipies and services to see what works. Whilst this is a public repository, my needs may not be the same as yours, but feel free to fork this and tweak it as you desire.

## Overview

Due to the number of services being deployed, I have categorized them and created a docker compose file for each category. These docker compose files are aggregated together by a script which allows you to treat all of them as if they were a single file.

- [☁️ Cloud](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.cloud.yml)
- [👨‍💻 Development](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.dev.yml)
- [📨 Mail](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.mail.yml)
- [💼 Management](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.management.yml)
- [📺 Media](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.media.yml)
- [💿 Music](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.music.yml)
- [🌐 Networking](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.networking.yml)
- [📈 Status / Monitoring](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.status.yml)
- [🔧 Tools / Utilities](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.tools.yml)

## Containers

| **Name** | **Description** | **Ports** | **Links** |
|---|---|---|---|
| [alltube](./docker-compose.tools.yml#L4)  | Web GUI for youtube-dl. |  | [GitHub](https://github.com/Rudloff/alltube) |
| [cyberchef](./docker-compose.tools.yml#L21)  | The Cyber Swiss Army Knife - a web app for encryption, encoding, compression and data analysis. |  | [GitHub](https://github.com/gchq/CyberChef) |
| [huginn](./docker-compose.tools.yml#L36)  | Build agents that perform automated tasks for you online. |  | [GitHub](https://github.com/huginn/huginn) |
| [invidious](./docker-compose.tools.yml#L51)  | An open source alternative front-end to YouTube. |  | [GitHub](https://github.com/iv-org/invidious), [Website](https://invidious.io/) |
| [authelia](./docker-compose.cloud.yml#L4)  | The Single Sign-On Multi-Factor portal for web apps. |  | [Docker Hub](https://hub.docker.com/r/authelia/authelia), [Website](https://www.authelia.com/) |
| [duplicati](./docker-compose.cloud.yml#L28) <sup>1</sup> | Open Source Backup Client. |  | [Docker Hub](https://hub.docker.com/r/linuxserver/duplicati), [Website](https://www.duplicati.com/) |
| [fidi](./docker-compose.cloud.yml#L51)  | Firefly III Data Importer. |  | [Docker Hub](https://hub.docker.com/r/fireflyiii/data-importer) |
| [firefly](./docker-compose.cloud.yml#L73)  | Personal Finance Manager. |  | [Docker Hub](https://hub.docker.com/r/fireflyiii/core), [Website](https://www.firefly-iii.org/) |
| [fsib](./docker-compose.cloud.yml#L107)  | FireflyIII Screenshot Import Bot. |  | [GitHub](https://github.com/ben-pearce/firefly-screenshot-bot) |
| [syncthing](./docker-compose.cloud.yml#L122) <sup>1</sup> | Open Source Continuous File Synchronization. | `22000:22000/tcp`, `22000:22000/udp`, `21027:21027/udp` | [GitHub](https://github.com/syncthing/), [Website](https://syncthing.net/) |
| [vaultwarden](./docker-compose.cloud.yml#L150)  | Unofficial Bitwarden compatible server written in Rust. |  | [GitHub](https://github.com/dani-garcia/vaultwarden) |
| [deemix](./docker-compose.music.yml#L4) <sup>1</sup> | Barebone deezer downloader. |  | [GitLab](https://gitlab.com/Bockiii/deemix-docker) |
| [navidrome](./docker-compose.music.yml#L24) <sup>1</sup> | Modern Music Server and Streamer compatible with Subsonic/Airsonic. |  | [GitHub](https://github.com/navidrome/navidrome) |
| [bazarr](./docker-compose.media.yml#L4) <sup>1</sup> | Manage and download subtitles based on your requirements. |  | [GitHub](https://github.com/morpheus65535/bazarr), [Docker Hub](https://hub.docker.com/r/linuxserver/bazarr), [Website](https://www.bazarr.media/) |
| [freshrss](./docker-compose.media.yml#L25)  | Self-hosted RSS feed aggregator. |  | [GitHub](https://github.com/FreshRSS/FreshRSS) |
| [jellyfin](./docker-compose.media.yml#L44) <sup>1</sup> | The Free Software Media System. |  | [GitHub](https://github.com/jellyfin/jellyfin) |
| [prowlarr](./docker-compose.media.yml#L67) <sup>2</sup> | An indexer manager/proxy. |  | [GitHub](https://github.com/Prowlarr/Prowlarr), [Website](https://wiki.servarr.com/prowlarr) |
| [radarr](./docker-compose.media.yml#L88) <sup>1</sup> | A fork of Sonarr to work with movies à la Couchpotato. |  | [GitHub](https://github.com/Radarr/Radarr) |
| [sabnzbd](./docker-compose.media.yml#L109) <sup>2</sup> | The free and easy binary newsreader. |  | [GitHub](https://github.com/sabnzbd/sabnzbd), [Docker Hub](https://hub.docker.com/r/linuxserver/sabnzbd), [Website](https://sabnzbd.org/) |
| [sonarr](./docker-compose.media.yml#L133) <sup>1</sup> | Smart PVR for newsgroup and bittorrent users. |  | [GitHub](https://github.com/Sonarr/Sonarr) |
| [transmission](./docker-compose.media.yml#L154) <sup>2</sup> | Fast, easy, and free BitTorrent client. |  | [GitHub](https://github.com/transmission/transmission) |
| [homer](./docker-compose.management.yml#L4)  | A very simple static homepage for your server. |  | [GitHub](https://github.com/bastienwirtz/homer) |
| [portainer](./docker-compose.management.yml#L21)  | Universal management GUI for Docker. |  | [GitHub](https://github.com/portainer/portainer) |
| [watchtower](./docker-compose.management.yml#L37)  | A process for automating Docker container base image updates. |  | [GitHub](https://github.com/containrrr/watchtower), [Docker Hub](https://hub.docker.com/r/containrrr/watchtower) |
| [uptime-kuma](./docker-compose.status.yml#L4)  | Self-hosted monitoring tool like "Uptime Robot". |  | [GitHub](https://github.com/louislam/uptime-kuma) |
| [zabbix-server](./docker-compose.status.yml#L18)  | Open Source Monitoring Solution. | `10051:10051` | [Docker Hub](https://hub.docker.com/r/zabbix/zabbix-server-pgsql) |
| [zabbix-web](./docker-compose.status.yml#L32)  | Zabbix web frontend. |  | [Docker Hub](https://hub.docker.com/r/zabbix/zabbix-web-nginx-pgsql) |
| [hoppscotch](./docker-compose.dev.yml#L4)  | API Development Ecosystem. |  | [GitHub](https://github.com/hoppscotch/hoppscotch) |
| [postgres](./docker-compose.dev.yml#L18)  | The world's most advanced open source database. |  | [Docker Hub](https://hub.docker.com/_/postgres) |
| [traefik](./docker-compose.networking.yml#L23)  | The Cloud Native Application Proxy. | `443:443`, `80:80` | [GitHub](https://github.com/traefik/traefik) |
| [tunnel](./docker-compose.networking.yml#L51)  | A Docker container for using WireGuard with PIA. |  | [Docker Hub](https://hub.docker.com/r/thrnz/docker-wireguard-pia) |
| [unifi-controller](./docker-compose.networking.yml#L77)  | Wireless network management. | `3478:3478/udp`, `10001:10001/udp`, `8080:8080` |  |
| [wireguard](./docker-compose.networking.yml#L104)  | Fast, Modern, Secure VPN Tunnel. | `${WG_PORT}:51820/udp` | [Website](https://www.wireguard.com/) |

<sup>1</sup>Assumes mass storage available, mounted at MEDIA_DIR on the host.

<sup>2</sup>All traffic is routed via tunnel VPN client container.

## Prerequisites

A linux-based operating system with [docker](https://docs.docker.com/engine/install/) installed.

## Installation

**Clone the Github repository**
```
git clone --recurse-submodules https://github.com/ben-pearce/home-server-deployment && cd home-server-deployment
```

**Copy both example.config and example.env**
```
cp -rp example.config .config && cp -rp example.env .env
```

**Edit .env and [other config files](https://github.com/ben-pearce/home-server-deployment/tree/main/example.config) as desired**
```
vi .env
```

> **⚠️ If migrating data, copy the .data directory from previous installation now.**

**Bring up the container network**
```
./aggregate-docker-compose.sh up -d
```
> 💭 The `aggregate-docker-compose.sh` script can be treated exactly like `docker-compose` command. 

## Configuration
The `.env` file stores environment variables to make starting the containers easy. This should be modified to match your needs before starting the containers for the first time.

| **Variable** | **Description** | **Example** |
|---|---|---|
| `NORDIGEN_ID` | Nordigen [API ID](https://ob.helpscoutdocs.com/article/132-token-handling-via-api). | `12abc34d...` |
| `NORDIGEN_KEY` | Nordigen [API key](https://ob.helpscoutdocs.com/article/132-token-handling-via-api). | `PbfRkaXNZMU...` |
| `TELEGRAM_TOKEN` | Telegram bot token. | `1111111111:xxxxx...` |
| `TELEGRAM_ALLOWED_USERS` | List of Telegram user IDs. | `1111111111` |
| `PIA_USER` | Private Internet Access user. | `p128` |
| `PIA_PASSWORD` | Private Internet Access password. |  |
| `CF_ZONE_API_TOKEN` | CloudFlare Zone Read API token. |  |
| `CF_DNS_API_TOKEN` | CloudFlare DNS Edit API token. |  |
| `ACME_EMAIL` | Email for registering ACME certificates. | `renewals@example.com` |
| `SMTP_HOST` | SMTP mail server host | `mail.example.com` |
| `SMTP_USER` | SMTP username | `postmaster@example.com` |
| `SMTP_PASSWORD` | SMTP password | `password123!` |
| `HOST` | The main host for web-based services. | `ample.com` |
| `DEEMIX_HOST` | Deemix hostname. | `deemix.example.com` |
| `PORTAINER_HOST` | Portainer hostname. | `docker.example.com` |
| `BITWARDEN_HOST` | Bitwarden hostname. | `bitwarden.example.com` |
| `FIREFLY_HOST` | Firefly hostname. | `firefly.example.com` |
| `FIREFLY_DATA_HOST` | Firefly data importer hostname. | `fidi.example.com` |
| `UPTIME_KUMA_HOST` | Uptime Kuma hostname. | `status.example.com` |
| `HUGINN_HOST` | Huginn hostname. | `huginn.example.com` |
| `JELLYFIN_HOST` | Jellyfin hostname. | `jellyfin.example.com` |
| `UNIFI_HOST` | Unifi controller hostname. | `unifi.example.com` |
| `WIREGUARD_HOST` | Wireguard hostname. | `wg.example.com` |
| `ZABBIX_HOST` | Zabbix web hostname. | `zabbix.example.com` |
| `HOPPSCOTCH_HOST` | Hoppscotch hostname. | `hoppscotch.example.com` |
| `AUTHELIA_HOST` | Authelia hostname. | `login.example.com` |
| `DUPLICATI_HOST` | Duplicati hostname. | `duplicati.example.com` |
| `INVIDIOUS_HOST` | Invidious hostname. | `invidious.example.com` |
| `FRESH_RSS` | FreshRSS hostname. | `freshrss.example.com` |
| `TRAEFIK_HOST` | Traefik hostname. | `traefik.example.com` |
| `TZ` | Timezone for all containers. | `Europe/London` |
| `PUID` | System user ID to run containers as. | `1000` |
| `GUID` | System group ID to run containers as. | `1000` |
| `MEDIA_DIR` | Location of media storage on host. | `/storage` |
| `CONFIG_DIR` | Location of config storage on host. | `.config` |
| `DATA_DIR` | Location of data storage on host. | `.data` |
| `POSTGRES_PASSWORD` | Postgress database password | `password123!` |
| `APP_KEY` | Laravel app key, use `echo "base64:$(openssl rand -base64 32)"`. | `base64:...` |
| `FIREFLY_III_ACCESS_TOKEN` | [Firefly access token](https://docs.firefly-iii.org/csv/install/configure/#client-id-or-personal-access-token). | `PbfRkaXNZMU...` |
| `SESSION_SECRET` | Unique key, use `openssl rand -base64 32`. | `PbfRkaXNZMU...` |
| `JELLYFIN_ADDR` | Jellyfin discoverability address. | `10.0.0.1` |
| `WG_PORT` | Wireguard exposed port | `51820` |


## Ideas 

I don't have any kind of project road map or plan for this, since I generally just tinker with & improve things in my free time. I do have a to-do list with services I would like to include, but this list is not exhaustive, and I frequently add things which are not on the list or remove items from the list I no longer think are worthwhile.

- [netboot.xyz](https://hub.docker.com/r/linuxserver/netbootxyz) - Boot various operating system installers or utilities from one place.
- [Home Assistant](https://hub.docker.com/r/homeassistant/home-assistant) - Open source home automation that puts local control and privacy first.
- [Minio](https://hub.docker.com/r/minio/minio/) - High Performance Object Storage.
- [Guacamole](https://hub.docker.com/r/guacamole/guacamole) - Clientless remote desktop gateway.
- [Glances](https://hub.docker.com/r/nicolargo/glances) - Cross-platform system monitoring tool.
- [VSCode server](https://hub.docker.com/r/linuxserver/code-server) - VS Code running on a remote server.
- [Grafana](https://hub.docker.com/r/grafana/grafana) - Open source analytics & monitoring solution
- [Prometheus](https://hub.docker.com/r/prom/prometheus) - Prometheus is a systems and service monitoring system.
- [Netdata](https://hub.docker.com/r/netdata/netdata) - Distributed, real-time, performance and health monitoring for systems and applications.
- [CryptPad](https://cryptpad.fr/) - Collaboration suite end-to-end encrypted and open-source.
- [SICKRAGE](https://www.sickrage.ca/) - Automatic video library manager for TV shows.
- [horahora](https://github.com/horahoradev/horahora) - Self-hosted media server which continuously archives videos from other sites using yt-dlp.
- [paperless-ngx](https://github.com/paperless-ngx/paperless-ngx) - A community-supported supercharged version of paperless: scan, index and archive all your physical documents.

## Contributions

First of all, **thanks for your interest!** But due to this being a personal project of mine tailored to my own needs, I cannot accept pull requests on this repository. Please feel free to fork and tweak this project though, and if you wish you can also open an issue to make suggestions for improvement and showcase your own homelab setups based off of this repo!

## Credits
- [NX211/homer-icons](https://github.com/NX211/homer-icons) - Repository used to grab the icons for the various services displayed on the homer dashboard.