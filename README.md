# 🏠 Home Server Deployment

This repository holds my docker compose files and configuration files for services I host on my homelab. For a while I have been experimenting with different recipies and services to see what works. Whilst this is a public repository, my needs may not be the same as yours, but feel free to fork this and tweak it as you desire.

## Overview

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
| [authelia](./docker-compose.cloud.yml#L19)  | The Single Sign-On Multi-Factor portal for web apps. |  | [Docker Hub](https://hub.docker.com/r/authelia/authelia), [Website](https://www.authelia.com/) |
| [fidi](./docker-compose.cloud.yml#L55)  | Firefly III Data Importer. |  | [Docker Hub](https://hub.docker.com/r/fireflyiii/data-importer) |
| [firefly](./docker-compose.cloud.yml#L98)  | Personal Finance Manager. |  | [Docker Hub](https://hub.docker.com/r/fireflyiii/core), [Website](https://www.firefly-iii.org/) |
| [immich-server](./docker-compose.cloud.yml#L144)  | Photo & Video Backup Solution |  | [GitHub](https://github.com/immich-app/immich), [Website](https://immich.app/) |
| [nextcloud](./docker-compose.cloud.yml#L177)  | Personal Cloud Storage |  | [Docker Hub](https://hub.docker.com/_/nextcloud), [Website](https://nextcloud.com/) |
| [paperless-ngx](./docker-compose.cloud.yml#L214)  | Document Management System. |  | [GitHub](https://github.com/paperless-ngx/paperless-ngx) |
| [vaultwarden](./docker-compose.cloud.yml#L256)  | Unofficial Bitwarden compatible server written in Rust. |  | [GitHub](https://github.com/dani-garcia/vaultwarden) |
| [rxresume-client](./docker-compose.cloud.yml#L280)  |  |  |  |
| [yaade](./docker-compose.dev.yml#L9)  | Yet Another API Development Environment. |  | [GitHub](https://github.com/EsperoTech/yaade) |
| [pgadmin](./docker-compose.dev.yml#L29)  | Web based administration tool for the PostgreSQL database. |  | [Docker Hub](https://hub.docker.com/r/dpage/pgadmin4) |
| [homer](./docker-compose.management.yml#L9)  | A very simple static homepage for your server. |  | [GitHub](https://github.com/bastienwirtz/homer) |
| [ofelia](./docker-compose.management.yml#L30)  | Docker job scheduler. |  | [GitHub](https://github.com/mcuadros/ofelia) |
| [portainer](./docker-compose.management.yml#L58)  | Universal management GUI for Docker. |  | [GitHub](https://github.com/portainer/portainer) |
| [watchtower](./docker-compose.management.yml#L76)  | A process for automating Docker container base image updates. |  | [GitHub](https://github.com/containrrr/watchtower), [Docker Hub](https://hub.docker.com/r/containrrr/watchtower) |
| [bazarr](./docker-compose.media.yml#L15) <sup>1</sup> | Manage and download subtitles based on your requirements. |  | [GitHub](https://github.com/morpheus65535/bazarr), [Docker Hub](https://hub.docker.com/r/linuxserver/bazarr), [Website](https://www.bazarr.media/) |
| [freshrss](./docker-compose.media.yml#L39)  | Self-hosted RSS feed aggregator. |  | [GitHub](https://github.com/FreshRSS/FreshRSS) |
| [jellyfin](./docker-compose.media.yml#L61) <sup>1</sup> | The Free Software Media System. |  | [GitHub](https://github.com/jellyfin/jellyfin) |
| [prowlarr](./docker-compose.media.yml#L96) <sup>2</sup> | An indexer manager/proxy. |  | [GitHub](https://github.com/Prowlarr/Prowlarr), [Website](https://wiki.servarr.com/prowlarr) |
| [radarr](./docker-compose.media.yml#L118) <sup>1</sup> | A fork of Sonarr to work with movies à la Couchpotato. |  | [GitHub](https://github.com/Radarr/Radarr) |
| [sabnzbd](./docker-compose.media.yml#L143) <sup>1,2</sup> | The free and easy binary newsreader. |  | [GitHub](https://github.com/sabnzbd/sabnzbd), [Docker Hub](https://hub.docker.com/r/linuxserver/sabnzbd), [Website](https://sabnzbd.org/) |
| [sonarr](./docker-compose.media.yml#L168) <sup>1</sup> | Smart PVR for newsgroup and bittorrent users. |  | [GitHub](https://github.com/Sonarr/Sonarr) |
| [transmission](./docker-compose.media.yml#L193) <sup>1,2</sup> | Fast, easy, and free BitTorrent client. |  | [GitHub](https://github.com/transmission/transmission) |
| [tvheadend](./docker-compose.media.yml#L216) <sup>1,2</sup> | TV Streaming Server. |  | [Website](https://tvheadend.org/) |
| [deemix](./docker-compose.music.yml#L9)  | Barebone deezer downloader. |  | [GitLab](https://gitlab.com/Bockiii/deemix-docker) |
| [lidarr](./docker-compose.music.yml#L33) <sup>1</sup> | Music Collection Manager. |  | [GitHub](https://github.com/Lidarr/Lidarr) |
| [navidrome](./docker-compose.music.yml#L62) <sup>1</sup> | Modern Music Server and Streamer compatible with Subsonic/Airsonic. |  | [GitHub](https://github.com/navidrome/navidrome) |
| [cloudflared](./docker-compose.networking.yml#L25)  | Cloudflare Zero Trust tunnel |  |  |
| [traefik](./docker-compose.networking.yml#L57)  | The Cloud Native Application Proxy. | `443:443`, `80:80` | [GitHub](https://github.com/traefik/traefik) |
| [tunnel](./docker-compose.networking.yml#L117)  | A Docker container for using WireGuard with PIA. | `9981:9981/tcp`, `9982:9982/tcp` | [Docker Hub](https://hub.docker.com/r/thrnz/docker-wireguard-pia) |
| [unifi-controller](./docker-compose.networking.yml#L152)  | Wireless network management. | `3478:3478/udp`, `10001:10001/udp`, `8080:8080` |  |
| [uptime-kuma](./docker-compose.status.yml#L9)  | Self-hosted monitoring tool like "Uptime Robot". |  | [GitHub](https://github.com/louislam/uptime-kuma) |
| [zabbix-web](./docker-compose.status.yml#L26)  | Zabbix web frontend. |  | [Docker Hub](https://hub.docker.com/r/zabbix/zabbix-web-nginx-pgsql) |
| [alltube](./docker-compose.tools.yml#L11)  | Web GUI for youtube-dl. |  | [GitHub](https://github.com/Rudloff/alltube) |
| [cyberchef](./docker-compose.tools.yml#L27)  | The Cyber Swiss Army Knife - a web app for encryption, encoding, compression and data analysis. |  | [GitHub](https://github.com/gchq/CyberChef) |
| [huginn](./docker-compose.tools.yml#L42)  | Build agents that perform automated tasks for you online. |  | [GitHub](https://github.com/huginn/huginn) |

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
| `ADMIN_EMAIL` | Administrative email address. | `somebody@email.com` |
| `LAN_SUBNET` | Local subnet . | `10.0.0.0/24` |


## Ideas 

I don't have any kind of project road map or plan for this, since I generally just tinker with & improve things in my free time. I do have a to-do list with services I would like to include, but this list is not exhaustive, and I frequently add things which are not on the list or remove items from the list I no longer think are worthwhile.

- [netboot.xyz](https://hub.docker.com/r/linuxserver/netbootxyz) - Boot various operating system installers or utilities from one place.
- [Home Assistant](https://hub.docker.com/r/homeassistant/home-assistant) - Open source home automation that puts local control and privacy first.
- [Minio](https://hub.docker.com/r/minio/minio/) - High Performance Object Storage.
- [Guacamole](https://hub.docker.com/r/guacamole/guacamole) - Clientless remote desktop gateway.
- [Glances](https://hub.docker.com/r/nicolargo/glances) - Cross-platform system monitoring tool.
- [Grafana](https://hub.docker.com/r/grafana/grafana) - Open source analytics & monitoring solution
- [Prometheus](https://hub.docker.com/r/prom/prometheus) - Prometheus is a systems and service monitoring system.
- [Netdata](https://hub.docker.com/r/netdata/netdata) - Distributed, real-time, performance and health monitoring for systems and applications.
- [CryptPad](https://cryptpad.fr/) - Collaboration suite end-to-end encrypted and open-source.
- [horahora](https://github.com/horahoradev/horahora) - Self-hosted media server which continuously archives videos from other sites using yt-dlp.

## Contributions

First of all, **thanks for your interest!** But due to this being a personal project of mine tailored to my own needs, I cannot accept pull requests on this repository. Please feel free to fork and tweak this project though, and if you wish you can also open an issue to make suggestions for improvement and showcase your own homelab setups based off of this repo!

## Credits
- [walkxcode/dashboard-icons](https://github.com/walkxcode/dashboard-icons) - Repository used to grab the icons for the various services displayed on the homer dashboard.