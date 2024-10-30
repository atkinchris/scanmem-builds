# scanmem builds

Build [scanmem](https://github.com/scanmem/scanmem), a memory scanner for Linux. This was designed to create builds for the Steam Deck.

```sh
docker buildx build --platform=linux/amd64 --output type=local,dest=output .
```

```sh
wget -qO /home/deck/.local/share/flatpak/exports/bin/scanmem https://github.com/atkinchris/scanmem-builds/releases/download/v0.17/scanmem
```
