# 🏠 Home Server Deployment

This repository holds my docker compose files and configuration files for services I host on my homelab. For a while I have been experimenting with different recipies and services to see what works. Whilst this is a public repository, my needs may not be the same as yours, but feel free to fork this and tweak it as you desire.

## Overview

- [☁️ Cloud](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.cloud.yml)
- [👨‍💻 Development](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.dev.yml)
- [💼 Management](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.management.yml)
- [📺 Media](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.media.yml)
- [💿 Music](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.music.yml)
- [🌐 Networking](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.networking.yml)
- [🔧 Tools / Utilities](https://github.com/ben-pearce/jessie-server-deployment/blob/main/docker-compose.tools.yml)

## Containers

| **Name** | **Description** | **Ports** | **Links** |
|---|---|---|---|
| [traefik](./docker-compose.yml#L13)  | The Cloud Native Application Proxy. | `0.0.0.0:80:80`, `0.0.0.0:443:443` | [GitHub](https://github.com/traefik/traefik) |
| [tunnel](./stacks/common/docker-compose.tunnel.yml#L5)  | A Docker container for using WireGuard with PIA. |  | [Docker Hub](https://hub.docker.com/r/thrnz/docker-wireguard-pia) |
| [bazarr](./stacks/docker-compose.arr.yml#L8)  | Manage and download subtitles based on your requirements. |  | [GitHub](https://github.com/morpheus65535/bazarr), [Docker Hub](https://hub.docker.com/r/linuxserver/bazarr), [Website](https://www.bazarr.media/) |
| [prowlarr](./stacks/docker-compose.arr.yml#L32) <sup>1</sup> | An indexer manager/proxy. |  | [GitHub](https://github.com/Prowlarr/Prowlarr), [Website](https://wiki.servarr.com/prowlarr) |
| [radarr](./stacks/docker-compose.arr.yml#L54)  | A fork of Sonarr to work with movies à la Couchpotato. |  | [GitHub](https://github.com/Radarr/Radarr) |
| [sabnzbd](./stacks/docker-compose.arr.yml#L78) <sup>1</sup> | The free and easy binary newsreader. |  | [GitHub](https://github.com/sabnzbd/sabnzbd), [Docker Hub](https://hub.docker.com/r/linuxserver/sabnzbd), [Website](https://sabnzbd.org/) |
| [sonarr](./stacks/docker-compose.arr.yml#L102)  | Smart PVR for newsgroup and bittorrent users. |  | [GitHub](https://github.com/Sonarr/Sonarr) |
| [transmission](./stacks/docker-compose.arr.yml#L126) <sup>1</sup> | Fast, easy, and free BitTorrent client. |  | [GitHub](https://github.com/transmission/transmission) |
| [authelia](./stacks/docker-compose.authelia.yml#L7)  | The Single Sign-On Multi-Factor portal for web apps. |  | [Docker Hub](https://hub.docker.com/r/authelia/authelia), [Website](https://www.authelia.com/) |
| [authelia-postgres](./stacks/docker-compose.authelia.yml#L46)  |  |  |  |
| [cobalt-api](./stacks/docker-compose.cobalt.yml#L5)  |  |  |  |
| [cobalt-web](./stacks/docker-compose.cobalt.yml#L22)  | Save what you love. |  | [GitHub](https://github.com/wukko/cobalt) |
| [cyberchef](./stacks/docker-compose.cyberchef.yml#L5)  | The Cyber Swiss Army Knife - a web app for encryption, encoding, compression and data analysis. |  | [GitHub](https://github.com/gchq/CyberChef) |
| [deemix](./stacks/docker-compose.deemix.yml#L5)  | Barebone deezer downloader. |  | [GitLab](https://gitlab.com/Bockiii/deemix-docker) |
| [fdroid-server](./stacks/docker-compose.fdroid.yml#L5)  |  |  |  |
| [feishin](./stacks/docker-compose.feishin.yml#L5)  | A modern self-hosted music player. |  | [GitHub](https://github.com/jeffvli/feishin) |
| [fidi](./stacks/docker-compose.firefly.yml#L7)  | Firefly III Data Importer. |  | [Docker Hub](https://hub.docker.com/r/fireflyiii/data-importer) |
| [firefly](./stacks/docker-compose.firefly.yml#L50)  | Personal Finance Manager. |  | [Docker Hub](https://hub.docker.com/r/fireflyiii/core), [Website](https://www.firefly-iii.org/) |
| [firefly-postgres](./stacks/docker-compose.firefly.yml#L95)  |  |  |  |
| [freshrss](./stacks/docker-compose.freshrss.yml#L5)  | Self-hosted RSS feed aggregator. |  | [GitHub](https://github.com/FreshRSS/FreshRSS) |
| [homer](./stacks/docker-compose.homer.yml#L5)  | A very simple static homepage for your server. |  | [GitHub](https://github.com/bastienwirtz/homer) |
| [immich-machine-learning](./stacks/docker-compose.immich.yml#L7)  |  |  |  |
| [immich-postgres](./stacks/docker-compose.immich.yml#L28)  |  |  |  |
| [immich-server](./stacks/docker-compose.immich.yml#L51)  | Photo & Video Backup Solution |  | [GitHub](https://github.com/immich-app/immich), [Website](https://immich.app/) |
| [immich-valkey](./stacks/docker-compose.immich.yml#L82)  |  |  |  |
| [jellyfin](./stacks/docker-compose.jellyfin.yml#L8)  | The Free Software Media System. |  | [GitHub](https://github.com/jellyfin/jellyfin) |
| [tvheadend](./stacks/docker-compose.jellyfin.yml#L41)  | TV Streaming Server. |  | [Website](https://tvheadend.org/) |
| [karakeep-chrome](./stacks/docker-compose.karakeep.yml#L5)  |  |  |  |
| [karakeep-meilisearch](./stacks/docker-compose.karakeep.yml#L18)  |  |  |  |
| [karakeep-web](./stacks/docker-compose.karakeep.yml#L29)  | The Bookmark Everything App |  | [Website](https://karakeep.app/) |
| [lidarr](./stacks/docker-compose.lidarr.yml#L7)  | Music Collection Manager. |  | [GitHub](https://github.com/Lidarr/Lidarr) |
| [portainer-agent](./stacks/docker-compose.monitoring.yml#L5)  | Portainer edge agent. |  | [GitHub](https://github.com/portainer/agent) |
| [zabbix-agent](./stacks/docker-compose.monitoring.yml#L21)  | Zabbix agent for monitoring. |  | [Docker Hub](https://hub.docker.com/r/zabbix/zabbix-agent) |
| [n8n](./stacks/docker-compose.n8n.yml#L5)  | Powerful workflow automation. |  |  |
| [navidrome](./stacks/docker-compose.navidrome.yml#L7)  | Modern Music Server and Streamer compatible with Subsonic/Airsonic. |  | [GitHub](https://github.com/navidrome/navidrome) |
| [nextcloud](./stacks/docker-compose.nextcloud.yml#L8)  | Personal Cloud Storage |  | [Docker Hub](https://hub.docker.com/_/nextcloud), [Website](https://nextcloud.com/) |
| [nextcloud-postgres](./stacks/docker-compose.nextcloud.yml#L53)  |  |  |  |
| [nextcloud-redis](./stacks/docker-compose.nextcloud.yml#L75)  |  |  |  |
| [obsidian-couchdb](./stacks/docker-compose.obsidian.yml#L5)  |  |  |  |
| [ofelia](./stacks/docker-compose.ofelia.yml#L5)  | Docker job scheduler. |  | [GitHub](https://github.com/mcuadros/ofelia) |
| [otrecorder](./stacks/docker-compose.owntracks.yml#L5)  | Store and access data published by OwnTracks apps. |  | [GitHub](https://github.com/owntracks/recorder) |
| [owntracks-frontend](./stacks/docker-compose.owntracks.yml#L24)  | Web interface for OwnTracks built with Vue.js |  | [GitHub](https://github.com/owntracks/frontend) |
| [paperless-gotenberg](./stacks/docker-compose.paperless.yml#L7)  |  |  |  |
| [paperless-ngx](./stacks/docker-compose.paperless.yml#L17)  | Document Management System. |  | [GitHub](https://github.com/paperless-ngx/paperless-ngx) |
| [paperless-postgres](./stacks/docker-compose.paperless.yml#L68)  |  |  |  |
| [paperless-redis](./stacks/docker-compose.paperless.yml#L90)  |  |  |  |
| [paperless-scanner](./stacks/docker-compose.paperless.yml#L98)  |  |  |  |
| [paperless-tika](./stacks/docker-compose.paperless.yml#L113)  |  |  |  |
| [pgadmin](./stacks/docker-compose.pgadmin.yml#L5)  | Web based administration tool for the PostgreSQL database. |  | [Docker Hub](https://hub.docker.com/r/dpage/pgadmin4) |
| [stirling-pdf](./stacks/docker-compose.stirling-pdf.yml#L5)  | PDF manipulation tool. |  | [GitHub](https://github.com/Stirling-Tools/Stirling-PDF) |
| [vaultwarden](./stacks/docker-compose.vaultwarden.yml#L7)  | Unofficial Bitwarden compatible server written in Rust. |  | [GitHub](https://github.com/dani-garcia/vaultwarden) |

<sup>1</sup>All traffic is routed via tunnel VPN client container.

## Prerequisites

A linux-based operating system with [docker](https://docs.docker.com/engine/install/) installed.

## Configuration
The `.env` file stores environment variables to make starting the containers easy. This should be modified to match your needs before starting the containers for the first time.

| **Variable** | **Description** | **Example** |
|---|---|---|
| `HOST` | The main host for web-based services. | `jessie` |
| `SMTP_HOST` | SMTP mail server host. | `mail.example.com` |
| `SMTP_USER` | SMTP username. | `postmaster@example.com` |
| `TZ` | Timezone for all containers. | `Europe/London` |
| `PUID` | System user ID to run containers as. | `1000` |
| `PGID` | System group ID to run containers as. | `1004` |
| `CONFIG_DIR` | Location of config storage on host. | `config` |
| `DATA_DIR` | Location of data storage on host. | `data` |
| `LOG_DIR` | Location of logs directory on host. | `/var/log` |
| `ADMIN_EMAIL` | Administrative email address. | `somebody@example.com` |
| `LAN_SUBNET` | Local subnet. | `10.0.0.0/24` |
| `PRINTER_HOST` | Printer host. | `printer.example.com` |
| `NFS_HOST` | Host of NFS shares. | `nfs.example.com` |
| `ZBX_HOSTNAME` | Zabbix server hostname. | `zabbix-server` |
| `ZBX_SERVER_HOST` | Zabbix monitoring server host. | `zabbix.example.com` |
| `ZBX_REFRESHACTIVECHECKS` | Zabbix active check interval. | `60` |


## Contributions

First of all, **thanks for your interest!** But due to this being a personal project of mine tailored to my own needs, I cannot accept pull requests on this repository. Please feel free to fork and tweak this project though.