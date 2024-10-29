# scanmem builds

Build [scanmem](https://github.com/scanmem/scanmem), a memory scanner for Linux. This was designed to create builds for the Steam Deck.

```sh
docker buildx build --platform=linux/amd64 --output type=local,dest=output .
```
