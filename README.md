# 🏠 Home Server Deployment

This repository holds my docker compose files and configuration files for services I host on my homelab. For a while I have been experimenting with different recipies and services to see what works. Whilst this is a public repository, my needs may not be the same as yours, but feel free to fork this and tweak it as you desire.

## Overview

- [☁️ Cloud](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.cloud.yml)
- [👨‍💻 Development](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.dev.yml)
- [📨 Mail](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.mail.yml)
- [💼 Management](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.management.yml)
- [📺 Media](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.media.yml)
- [💿 Music](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.music.yml)
- [🌐 Networking](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.networking.yml)
- [📈 Status / Monitoring](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.status.yml)
- [🔧 Tools / Utilities](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.tools.yml)

## Containers

| **Name** | **Description** | **Ports** | **Links** |
|---|---|---|---|
| [authelia](./docker-compose.cloud.yml#L20)  | The Single Sign-On Multi-Factor portal for web apps. |  | [Docker Hub](https://hub.docker.com/r/authelia/authelia), [Website](https://www.authelia.com/) |
| [fidi](./docker-compose.cloud.yml#L56)  | Firefly III Data Importer. |  | [Docker Hub](https://hub.docker.com/r/fireflyiii/data-importer) |
| [firefly](./docker-compose.cloud.yml#L99)  | Personal Finance Manager. |  | [Docker Hub](https://hub.docker.com/r/fireflyiii/core), [Website](https://www.firefly-iii.org/) |
| [immich-server](./docker-compose.cloud.yml#L145)  | Photo & Video Backup Solution |  | [GitHub](https://github.com/immich-app/immich), [Website](https://immich.app/) |
| [nextcloud](./docker-compose.cloud.yml#L177)  | Personal Cloud Storage |  | [Docker Hub](https://hub.docker.com/_/nextcloud), [Website](https://nextcloud.com/) |
| [paperless-ngx](./docker-compose.cloud.yml#L214)  | Document Management System. |  | [GitHub](https://github.com/paperless-ngx/paperless-ngx) |
| [rxresume-client](./docker-compose.cloud.yml#L257)  |  |  |  |
| [vaultwarden](./docker-compose.cloud.yml#L273)  | Unofficial Bitwarden compatible server written in Rust. |  | [GitHub](https://github.com/dani-garcia/vaultwarden) |
| [wallabag](./docker-compose.cloud.yml#L297)  | A self hostable application for saving web pages, freely. |  | [GitHub](https://github.com/wallabag) |
| [pgadmin](./docker-compose.dev.yml#L9)  | Web based administration tool for the PostgreSQL database. |  | [Docker Hub](https://hub.docker.com/r/dpage/pgadmin4) |
| [yaade](./docker-compose.dev.yml#L35)  | Yet Another API Development Environment. |  | [GitHub](https://github.com/EsperoTech/yaade) |
| [homer](./docker-compose.management.yml#L9)  | A very simple static homepage for your server. |  | [GitHub](https://github.com/bastienwirtz/homer) |
| [ofelia](./docker-compose.management.yml#L30)  | Docker job scheduler. |  | [GitHub](https://github.com/mcuadros/ofelia) |
| [portainer](./docker-compose.management.yml#L51)  | Universal management GUI for Docker. |  | [GitHub](https://github.com/portainer/portainer) |
| [watchtower](./docker-compose.management.yml#L69)  | A process for automating Docker container base image updates. |  | [GitHub](https://github.com/containrrr/watchtower), [Docker Hub](https://hub.docker.com/r/containrrr/watchtower) |
| [bazarr](./docker-compose.media.yml#L13) <sup>1</sup> | Manage and download subtitles based on your requirements. |  | [GitHub](https://github.com/morpheus65535/bazarr), [Docker Hub](https://hub.docker.com/r/linuxserver/bazarr), [Website](https://www.bazarr.media/) |
| [freshrss](./docker-compose.media.yml#L38)  | Self-hosted RSS feed aggregator. |  | [GitHub](https://github.com/FreshRSS/FreshRSS) |
| [jellyfin](./docker-compose.media.yml#L63) <sup>1</sup> | The Free Software Media System. |  | [GitHub](https://github.com/jellyfin/jellyfin) |
| [prowlarr](./docker-compose.media.yml#L98) <sup>2</sup> | An indexer manager/proxy. |  | [GitHub](https://github.com/Prowlarr/Prowlarr), [Website](https://wiki.servarr.com/prowlarr) |
| [radarr](./docker-compose.media.yml#L121) <sup>1</sup> | A fork of Sonarr to work with movies à la Couchpotato. |  | [GitHub](https://github.com/Radarr/Radarr) |
| [sabnzbd](./docker-compose.media.yml#L147) <sup>1,2</sup> | The free and easy binary newsreader. |  | [GitHub](https://github.com/sabnzbd/sabnzbd), [Docker Hub](https://hub.docker.com/r/linuxserver/sabnzbd), [Website](https://sabnzbd.org/) |
| [sonarr](./docker-compose.media.yml#L173) <sup>1</sup> | Smart PVR for newsgroup and bittorrent users. |  | [GitHub](https://github.com/Sonarr/Sonarr) |
| [transmission](./docker-compose.media.yml#L199) <sup>1,2</sup> | Fast, easy, and free BitTorrent client. |  | [GitHub](https://github.com/transmission/transmission) |
| [tvheadend](./docker-compose.media.yml#L222) <sup>1,2</sup> | TV Streaming Server. |  | [Website](https://tvheadend.org/) |
| [deemix](./docker-compose.music.yml#L11)  | Barebone deezer downloader. |  | [GitLab](https://gitlab.com/Bockiii/deemix-docker) |
| [lidarr](./docker-compose.music.yml#L36)  | Music Collection Manager. |  | [GitHub](https://github.com/Lidarr/Lidarr) |
| [navidrome](./docker-compose.music.yml#L63)  | Modern Music Server and Streamer compatible with Subsonic/Airsonic. |  | [GitHub](https://github.com/navidrome/navidrome) |
| [feishin](./docker-compose.music.yml#L85)  | A modern self-hosted music player. |  | [GitHub](https://github.com/jeffvli/feishin) |
| [traefik](./docker-compose.networking.yml#L45)  | The Cloud Native Application Proxy. | `443:443`, `80:80` | [GitHub](https://github.com/traefik/traefik) |
| [tunnel](./docker-compose.networking.yml#L105)  | A Docker container for using WireGuard with PIA. | `9981:9981/tcp`, `9982:9982/tcp` | [Docker Hub](https://hub.docker.com/r/thrnz/docker-wireguard-pia) |
| [unifi-controller](./docker-compose.networking.yml#L140)  | Wireless network management. | `3478:3478/udp`, `10001:10001/udp`, `8080:8080` |  |
| [uptime-kuma](./docker-compose.status.yml#L9)  | Self-hosted monitoring tool like "Uptime Robot". |  | [GitHub](https://github.com/louislam/uptime-kuma) |
| [zabbix-web](./docker-compose.status.yml#L26)  | Zabbix web frontend. |  | [Docker Hub](https://hub.docker.com/r/zabbix/zabbix-web-nginx-pgsql) |
| [cobalt-web](./docker-compose.tools.yml#L13)  | Save what you love. |  | [GitHub](https://github.com/wukko/cobalt) |
| [cyberchef](./docker-compose.tools.yml#L33)  | The Cyber Swiss Army Knife - a web app for encryption, encoding, compression and data analysis. |  | [GitHub](https://github.com/gchq/CyberChef) |
| [n8n](./docker-compose.tools.yml#L49)  | Powerful workflow automation. |  |  |
| [stirling-pdf](./docker-compose.tools.yml#L63)  | PDF manipulation tool. |  | [GitHub](https://github.com/Stirling-Tools/Stirling-PDF) |

<sup>1</sup>Assumes mass storage available, mounted at MEDIA_DIR on the host.

<sup>2</sup>All traffic is routed via tunnel VPN client container.

## Prerequisites

A linux-based operating system with [docker](https://docs.docker.com/engine/install/) installed.

## Installation

**Clone the Github repository**
```
git clone --recurse-submodules https://github.com/ben-pearce/jessie-server-deployment && cd jessie-server-deployment
```

**Copy both example.config and example.env**
```
cp -rp example.config .config && cp -rp example.env .env
```

**Edit .env and [other config files](https://github.com/ben-pearce/jessie-server-deployment/tree/main/example.config) as desired**
```
vi .env
```

> **⚠️ If migrating data, copy the .data directory from previous installation now.**

**Bring up the container network**
```
docker-compose up -d
```
> 💭 The `aggregate-docker-compose.sh` script can be treated exactly like `docker-compose` command. 

## Configuration
The `.env` file stores environment variables to make starting the containers easy. This should be modified to match your needs before starting the containers for the first time.

| **Variable** | **Description** | **Example** |
|---|---|---|
| `HOST` | The main host for web-based services. | `example.com` |
| `SMTP_HOST` | SMTP mail server host. | `mail.example.com` |
| `SMTP_USER` | SMTP username. | `postmaster@example.com` |
| `TZ` | Timezone for all containers. | `Europe/London` |
| `PUID` | System user ID to run containers as. | `1000` |
| `GUID` | System group ID to run containers as. | `1000` |
| `MEDIA_DIR` | Location of media storage on host. | `/mnt/storage` |
| `CONFIG_DIR` | Location of config storage on host. | `.config` |
| `DATA_DIR` | Location of data storage on host. | `.data` |
| `CLOUD_DIR` | Location of cloud storage on host. | `/mnt/cloud` |
| `MUSIC_DIR` | Location of music storage on host. | `/mnt/music` |
| `LOG_DIR` | Location of logs directory on host. | `/var/log` |
| `ADMIN_EMAIL` | Administrative email address. | `somebody@email.com` |
| `LAN_SUBNET` | Local subnet . | `10.0.0.0/24` |
| `PRINTER_HOST` | Printer host |  |


## Contributions

First of all, **thanks for your interest!** But due to this being a personal project of mine tailored to my own needs, I cannot accept pull requests on this repository. Please feel free to fork and tweak this project though, and if you wish you can also open an issue to make suggestions for improvement and showcase your own homelab setups based off of this repo!
