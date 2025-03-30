# 🏠 Home Server Deployment

This repository holds my docker compose files and configuration files for services I host on my homelab. For a while I have been experimenting with different recipies and services to see what works. Whilst this is a public repository, my needs may not be the same as yours, but feel free to fork this and tweak it as you desire.

## Overview

- [☁️ Cloud](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.cloud.yml)
- [👨‍💻 Development](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.dev.yml)
- [💼 Management](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.management.yml)
- [📺 Media](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.media.yml)
- [💿 Music](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.music.yml)
- [🌐 Networking](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.networking.yml)
- [📈 Status / Monitoring](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.status.yml)
- [🔧 Tools / Utilities](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.tools.yml)

## Containers

| **Name** | **Description** | **Ports** | **Links** |
|---|---|---|---|
| [tunnel](./stacks/common/docker-compose.tunnel.yml#L17)  | A Docker container for using WireGuard with PIA. | `9981:9981/tcp`, `9982:9982/tcp` | [Docker Hub](https://hub.docker.com/r/thrnz/docker-wireguard-pia) |
| [bazarr](./stacks/docker-compose.arr.yml#L8) <sup>1</sup> | Manage and download subtitles based on your requirements. |  | [GitHub](https://github.com/morpheus65535/bazarr), [Docker Hub](https://hub.docker.com/r/linuxserver/bazarr), [Website](https://www.bazarr.media/) |
| [prowlarr](./stacks/docker-compose.arr.yml#L33) <sup>2</sup> | An indexer manager/proxy. |  | [GitHub](https://github.com/Prowlarr/Prowlarr), [Website](https://wiki.servarr.com/prowlarr) |
| [radarr](./stacks/docker-compose.arr.yml#L55) <sup>1</sup> | A fork of Sonarr to work with movies à la Couchpotato. |  | [GitHub](https://github.com/Radarr/Radarr) |
| [sabnzbd](./stacks/docker-compose.arr.yml#L80) <sup>1,2</sup> | The free and easy binary newsreader. |  | [GitHub](https://github.com/sabnzbd/sabnzbd), [Docker Hub](https://hub.docker.com/r/linuxserver/sabnzbd), [Website](https://sabnzbd.org/) |
| [sonarr](./stacks/docker-compose.arr.yml#L105) <sup>1</sup> | Smart PVR for newsgroup and bittorrent users. |  | [GitHub](https://github.com/Sonarr/Sonarr) |
| [transmission](./stacks/docker-compose.arr.yml#L130) <sup>1,2</sup> | Fast, easy, and free BitTorrent client. |  | [GitHub](https://github.com/transmission/transmission) |
| [authelia](./stacks/docker-compose.authelia.yml#L21)  | The Single Sign-On Multi-Factor portal for web apps. |  | [Docker Hub](https://hub.docker.com/r/authelia/authelia), [Website](https://www.authelia.com/) |
| [authelia-postgres](./stacks/docker-compose.authelia.yml#L60)  |  |  |  |
| [cobalt-api](./stacks/docker-compose.cobalt.yml#L6)  |  |  |  |
| [cobalt-web](./stacks/docker-compose.cobalt.yml#L23)  | Save what you love. |  | [GitHub](https://github.com/wukko/cobalt) |
| [cyberchef](./stacks/docker-compose.cyberchef.yml#L6)  | The Cyber Swiss Army Knife - a web app for encryption, encoding, compression and data analysis. |  | [GitHub](https://github.com/gchq/CyberChef) |
| [deemix](./stacks/docker-compose.deemix.yml#L6)  | Barebone deezer downloader. |  | [GitLab](https://gitlab.com/Bockiii/deemix-docker) |
| [fdroid-server](./stacks/docker-compose.fdroid.yml#L9)  |  |  |  |
| [feishin](./stacks/docker-compose.feishin.yml#L6)  | A modern self-hosted music player. |  | [GitHub](https://github.com/jeffvli/feishin) |
| [fidi](./stacks/docker-compose.firefly.yml#L21)  | Firefly III Data Importer. |  | [Docker Hub](https://hub.docker.com/r/fireflyiii/data-importer) |
| [firefly](./stacks/docker-compose.firefly.yml#L65)  | Personal Finance Manager. |  | [Docker Hub](https://hub.docker.com/r/fireflyiii/core), [Website](https://www.firefly-iii.org/) |
| [firefly-postgres](./stacks/docker-compose.firefly.yml#L110)  |  |  |  |
| [freshrss](./stacks/docker-compose.freshrss.yml#L6)  | Self-hosted RSS feed aggregator. |  | [GitHub](https://github.com/FreshRSS/FreshRSS) |
| [homer](./stacks/docker-compose.homer.yml#L6)  | A very simple static homepage for your server. |  | [GitHub](https://github.com/bastienwirtz/homer) |
| [immich-machine-learning](./stacks/docker-compose.immich.yml#L11)  |  |  |  |
| [immich-postgres](./stacks/docker-compose.immich.yml#L32)  |  |  |  |
| [immich-redis](./stacks/docker-compose.immich.yml#L54)  |  |  |  |
| [immich-server](./stacks/docker-compose.immich.yml#L60)  | Photo & Video Backup Solution |  | [GitHub](https://github.com/immich-app/immich), [Website](https://immich.app/) |
| [jellyfin](./stacks/docker-compose.jellyfin.yml#L8) <sup>1</sup> | The Free Software Media System. |  | [GitHub](https://github.com/jellyfin/jellyfin) |
| [tvheadend](./stacks/docker-compose.jellyfin.yml#L43) <sup>1</sup> | TV Streaming Server. |  | [Website](https://tvheadend.org/) |
| [lidarr](./stacks/docker-compose.lidarr.yml#L6)  | Music Collection Manager. |  | [GitHub](https://github.com/Lidarr/Lidarr) |
| [n8n](./stacks/docker-compose.n8n.yml#L6)  | Powerful workflow automation. |  |  |
| [navidrome](./stacks/docker-compose.navidrome.yml#L6)  | Modern Music Server and Streamer compatible with Subsonic/Airsonic. |  | [GitHub](https://github.com/navidrome/navidrome) |
| [nextcloud](./stacks/docker-compose.nextcloud.yml#L13)  | Personal Cloud Storage |  | [Docker Hub](https://hub.docker.com/_/nextcloud), [Website](https://nextcloud.com/) |
| [nextcloud-postgres](./stacks/docker-compose.nextcloud.yml#L57)  |  |  |  |
| [nextcloud-redis](./stacks/docker-compose.nextcloud.yml#L79)  |  |  |  |
| [obsidian-couchdb](./stacks/docker-compose.obsidian.yml#L6)  |  |  |  |
| [ofelia](./stacks/docker-compose.ofelia.yml#L4)  | Docker job scheduler. |  | [GitHub](https://github.com/mcuadros/ofelia) |
| [otrecorder](./stacks/docker-compose.owntracks.yml#L6)  | Store and access data published by OwnTracks apps. |  | [GitHub](https://github.com/owntracks/recorder) |
| [owntracks-frontend](./stacks/docker-compose.owntracks.yml#L25)  | Web interface for OwnTracks built with Vue.js |  | [GitHub](https://github.com/owntracks/frontend) |
| [paperless-gotenberg](./stacks/docker-compose.paperless.yml#L15)  |  |  |  |
| [paperless-ngx](./stacks/docker-compose.paperless.yml#L21)  | Document Management System. |  | [GitHub](https://github.com/paperless-ngx/paperless-ngx) |
| [paperless-postgres](./stacks/docker-compose.paperless.yml#L71)  |  |  |  |
| [paperless-redis](./stacks/docker-compose.paperless.yml#L93)  |  |  |  |
| [paperless-scanner](./stacks/docker-compose.paperless.yml#L101)  |  |  |  |
| [paperless-tika](./stacks/docker-compose.paperless.yml#L116)  |  |  |  |
| [pgadmin](./stacks/docker-compose.pgadmin.yml#L6)  | Web based administration tool for the PostgreSQL database. |  | [Docker Hub](https://hub.docker.com/r/dpage/pgadmin4) |
| [portainer](./stacks/docker-compose.portainer.yml#L6)  | Universal management GUI for Docker. |  | [GitHub](https://github.com/portainer/portainer) |
| [stirling-pdf](./stacks/docker-compose.stirling-pdf.yml#L6)  | PDF manipulation tool. |  | [GitHub](https://github.com/Stirling-Tools/Stirling-PDF) |
| [unifi-controller](./stacks/docker-compose.unifi-controller.yml#L6)  | Wireless network management. | `3478:3478/udp`, `10001:10001/udp`, `8080:8080` |  |
| [uptime-kuma](./stacks/docker-compose.uptime-kuma.yml#L6)  | Self-hosted monitoring tool like "Uptime Robot". |  | [GitHub](https://github.com/louislam/uptime-kuma) |
| [vaultwarden](./stacks/docker-compose.vaultwarden.yml#L8)  | Unofficial Bitwarden compatible server written in Rust. |  | [GitHub](https://github.com/dani-garcia/vaultwarden) |
| [wallabag](./stacks/docker-compose.wallabag.yml#L6)  | A self hostable application for saving web pages, freely. |  | [GitHub](https://github.com/wallabag) |
| [yaade](./stacks/docker-compose.yaade.yml#L6)  | Yet Another API Development Environment. |  | [GitHub](https://github.com/EsperoTech/yaade) |
| [zabbix-postgres](./stacks/docker-compose.zabbix.yml#L18)  |  |  |  |
| [zabbix-server](./stacks/docker-compose.zabbix.yml#L40)  |  | `10051:10051` |  |
| [zabbix-web](./stacks/docker-compose.zabbix.yml#L54)  | Zabbix web frontend. |  | [Docker Hub](https://hub.docker.com/r/zabbix/zabbix-web-nginx-pgsql) |

<sup>1</sup>Assumes mass storage available, mounted at MEDIA_DIR on the host.

<sup>2</sup>All traffic is routed via tunnel VPN client container.

## Prerequisites

A linux-based operating system with [docker](https://docs.docker.com/engine/install/) installed.

## Configuration
The `.env` file stores environment variables to make starting the containers easy. This should be modified to match your needs before starting the containers for the first time.

| **Variable** | **Description** | **Example** |
|---|---|---|
| `HOST` | The main host for web-based services. | `example.com` |
| `SMTP_HOST` | SMTP mail server host. | `mail.example.com` |
| `SMTP_USER` | SMTP username. | `postmaster@example.com` |
| `TZ` | Timezone for all containers. | `Europe/London` |
| `PUID` | System user ID to run containers as. | `1000` |
| `PGID` | System group ID to run containers as. | `1000` |
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

First of all, **thanks for your interest!** But due to this being a personal project of mine tailored to my own needs, I cannot accept pull requests on this repository. Please feel free to fork and tweak this project though.