# gdb-multiarch

gdb-multiarch を含んだスタック。

## Build

```sh
docker buildx build --platform linux/amd64,linux/arm64 --build-arg http_proxy=http://host.docker.internal:3142 --push -t mikoto2000/che-gdb-multiarch:latest .
```

