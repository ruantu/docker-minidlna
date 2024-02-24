# Docker-MiniDLNA
Simple Docker MiniDLNA image based on Alpine.

## Introductions
This project aims to run commonly used NAS software in Docker.

## How to build

### Build command
`docker build -t ruantu/minidlna:latest .`

## How to use

### Mapping port
- SSDP Port: `1900 UDP`
- HTTP Port: `8200 TCP`

### Mounting volumes
- Storing directory for media files: `/root/media`  
- Configuration file: `/etc/minidlna.conf`  

### Software packages
- [minidlna](https://pkgs.alpinelinux.org/packages?name=minidlna&branch=edge&repo=&arch=&maintainer=)
