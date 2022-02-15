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
| [vaultwarden](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.cloud.yml#L3) | Unofficial Bitwarden compatible server written in Rust. |  | [GitHub](https://github.com/dani-garcia/vaultwarden) |
| [syncthing](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.cloud.yml#L9) | Open Source Continuous File Synchronization. | `22000`, `22000/udp`, `21027/udp` | [GitHub](https://github.com/syncthing/syncthing) |
| [iredmail](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.mail.yml#L3) | Open Source Mail Server Solution. | `143`, `993`, `25`, `465`, `587` | [GitHub](https://github.com/iredmail/iRedMail) |
| [homer](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.management.yml#L3) | A very simple static homepage for your server. |  | [GitHub](https://github.com/bastienwirtz/homer) |
| [portainer](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.management.yml#L12) | Universal management GUI for Docker. |  | [GitHub](https://github.com/portainer/portainer) |
| [transmission](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.media.yml#L3)<sup>1,2</sup> | Fast, easy, and free BitTorrent client. |  | [GitHub](https://github.com/transmission/transmission) |
| [sonarr](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.media.yml#L16)<sup>1</sup> | Smart PVR for newsgroup and bittorrent users. |  | [GitHub](https://github.com/Sonarr/Sonarr) |
| [radarr](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.media.yml#L30)<sup>1</sup> | A fork of Sonarr to work with movies à la Couchpotato. |  | [GitHub](https://github.com/Radarr/Radarr) |
| [jackett](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.media.yml#L44)<sup>2</sup> | Tracker Aggregator. |  | [GitHub](https://github.com/Jackett/Jackett) |
| [plex](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.media.yml#L58)<sup>1</sup> | Media-server with support for many devices. |  | [Website](https://www.plex.tv/) |
| [freshrss](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.media.yml#L74) | Self-hosted RSS feed aggregator. |  | [GitHub](https://github.com/FreshRSS/FreshRSS) |
| [deemix](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.music.yml#L3)<sup>1</sup> | Barebone deezer downloader. |  | [Website](https://deemix.app/), [GitLab](https://gitlab.com/Bockiii/deemix-docker) |
| [navidrome](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.music.yml#L14)<sup>1</sup> | Modern Music Server and Streamer compatible with Subsonic/Airsonic. |  | [GitHub](https://github.com/navidrome/navidrome) |
| [nginx](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.networking.yml#L3) | High Performance Load Balancer, Web Server, & Reverse Proxy | `443`, `80` | [Website](https://www.nginx.com/) |
| [wireguard<sup>(server)</sup>](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.networking.yml#L34) | Fast, Modern, Secure VPN Tunnel | `51672/udp` | [Website](https://www.wireguard.com/) |
| [wireguard<sup>(client)</sup>](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.networking.yml#L55) | Fast, Modern, Secure VPN Tunnel |  | [Website](https://www.wireguard.com/) |
| [wireguard-ui](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.networking.yml#L73) | A web user interface to manage WireGuard. |  | [GitHub](https://github.com/ngoduykhanh/wireguard-ui) |
| [wg-monitor](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.networking.yml#L84) | Monitor `wg0.conf` and restart a docker container on the same host if the monitored file changes. |  | [Docker Hub](https://hub.docker.com/r/kking124/wireguard-monitor) |
| [unifi-controller](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.networking.yml#L101) | Wireless network management. |  |  |
| [cachet](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.status.yml#L12) | The Open Source Status Page System. |  | [GitHub](https://github.com/CachetHQ/Cachet) |
| [cachet-url-monitor](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.status.yml#L31) | Automated monitoring for cachet. |  | [GitHub](https://github.com/mtakaki/cachet-url-monitor) |
| [alltube](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.tools.yml#L3) | Web GUI for youtube-dl. |  | [GitHub](https://github.com/Rudloff/alltube) |
| [huginn](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.tools.yml#L7) | Build agents that perform automated tasks for you online. |  | [GitHub](https://github.com/huginn/huginn) |
| [cyberchef](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.tools.yml#L14) | The Cyber Swiss Army Knife - a web app for encryption, encoding, compression and data analysis. |  | [GitHub](https://github.com/gchq/CyberChef) |
| [postgres](https://github.com/ben-pearce/home-server-deployment/blob/main/docker-compose.dev.yml#L3) | The world's most advanced open source database |  | [Docker Hub](https://hub.docker.com/_/postgres) |

<sup>1</sup>Assumes mass storage available, mounted at `/storage` on the host.

<sup>2</sup>All traffic is routed via wireguard VPN client container.

## Prerequisites
**Hardware**: I run this on my budget home server which is an x86 dual core system with hyper-threading & 16GB memory. Generally these services do not consume much CPU resources, I would recommend more than 8GB of memory since just starting all of the services in the current state consumes over 7gigs. I do have to turn off transcoding in Plex as my server is just not up to the task, I rely on direct play or streaming over VLC with UPnP if the app cannot handle it for any particular device. Storage requirement is about 9GB+ (according to Portainer) just for the images, downloading content via Deemix, Sonarr & Radarr will **obviously** require some kind of mass storage.

**Sofware**: A linux-based operating system with [docker](https://docs.docker.com/engine/install/) & [docker-compose](https://docs.docker.com/compose/install/) installed.

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
| `HOST` | The main host for web-based services.<sup>3</sup> | `example.com` |
| `PUID` | System user ID to run containers as. | 1000 |
| `GUID` | System group ID to run containers as. | 1000 |
| `TZ` | Timezone for all containers. | `Europe/London` |
| `FIRST_MAIL_DOMAIN_ADMIN_PASSWORD` | Password for `postmaster` mail inbox. | `password123!` |
| `MLMMJADMIN_API_TOKEN` | Unique key, use `openssl rand -base64 32`. | `ePbfRkaXNZMU...` |
| `ROUNDCUBE_DES_KEY` | Unique key, use `openssl rand -base64 32`. | `ePbfRkaXNZMU...` |
| `POSTGRES_PASSWORD` | Postgres database password. | `password123!` |
| `APP_KEY` | Laravel app key, use `echo "base64:$(openssl rand -base64 32)"`. | `base64:...` |

<sup>3</sup>Note that you need to also point DNS records for sub-domains since some containers' web GUI cannot operate without their own domain.

## Ideas 

I don't have any kind of project road map or plan for this, since I generally just tinker with & improve things in my free time. I do have a to-do list with services I would like to include, but this list is not exhaustive, and I frequently add things which are not on the list or remove items from the list I no longer think are worthwhile.

- [SyncLounge](https://hub.docker.com/r/linuxserver/synclounge) - Watch Plex in sync with your friends/family.
- [netboot.xyz](https://hub.docker.com/r/linuxserver/netbootxyz) - Boot various operating system installers or utilities from one place.
- [NowShowing](https://hub.docker.com/r/ninthwalker/nowshowing) - A summary of new media that has recently been added to Plex.
- [Tautulli](https://hub.docker.com/r/linuxserver/tautulli) - Python based web application for monitoring, analytics and notifications for Plex Media Server.
- [Bazarr](https://hub.docker.com/r/linuxserver/bazarr) - Manage and download subtitles based on your requirements.
- [Home Assistant](https://hub.docker.com/r/homeassistant/home-assistant) - Open source home automation that puts local control and privacy first.
- [Firefly](https://hub.docker.com/r/fireflyiii/core) - A free and open source personal finance manager.
- [Minio](https://hub.docker.com/r/minio/minio/) - High Performance Object Storage.
- [Gitlab](https://hub.docker.com/r/gitlab/gitlab-ce) - GitLab Community Edition.
- [Guacamole](https://hub.docker.com/r/guacamole/guacamole) - Clientless remote desktop gateway.
- [Hydra](https://hub.docker.com/r/linuxserver/hydra) - Meta search for NZB indexers.
- [NZBGet](https://hub.docker.com/r/linuxserver/nzbget) - Usenet downloader.
- [Glances](https://hub.docker.com/r/nicolargo/glances) - Cross-platform system monitoring tool.
- [VSCode server](https://hub.docker.com/r/linuxserver/code-server) - VS Code running on a remote server.
- [Grafana](https://hub.docker.com/r/grafana/grafana) - Open source analytics & monitoring solution
- [Prometheus](https://hub.docker.com/r/prom/prometheus) - Prometheus is a systems and service monitoring system.
- [Netdata](https://hub.docker.com/r/netdata/netdata) - Distributed, real-time, performance and health monitoring for systems and applications.

## Contributions

First of all, **thanks for your interest!** But due to this being a personal project of mine tailored to my own needs, I cannot accept pull requests on this repository. Please feel free to fork and tweak this project though, and if you wish you can also open an issue to make suggestions for improvement and showcase your own homelab setups based off of this repo!

## Credits
- [NX211/homer-icons](https://github.com/NX211/homer-icons) - Repository used to grab the icons for the various services displayed on the homer dashboard.