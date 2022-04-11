# toppers-kernel-build-kit

TOPPERS 第三世代カーネルをビルドするための環境を含んだスタック。

## Build

### base

```sh
docker buildx build --platform linux/amd64,linux/arm64 --build-arg http_proxy=http://host.docker.internal:3142 --push -t mikoto2000/che-toppers-kernel-build-kit:base-latest .
```

### athrill-gcc

```sh
docker buildx build --platform linux/amd64,linux/arm64 --build-arg http_proxy=http://host.docker.internal:3142 --push -t mikoto2000/che-toppers-kernel-build-kit:athrill-gcc-latest -f Dockerfile_athrill-gcc .
```
### gcc-aarch64-linux-gnu

```sh
docker buildx build --platform linux/amd64,linux/arm64 --build-arg http_proxy=http://host.docker.internal:3142 --push -t mikoto2000/che-toppers-kernel-build-kit:gcc-aarch64-linux-gnu-latest -f Dockerfile_gcc-aarch64-linux-gnu .
```

### gcc-arm-none-eabi

```sh
docker buildx build --platform linux/amd64,linux/arm64 --build-arg http_proxy=http://host.docker.internal:3142 --push -t mikoto2000/che-toppers-kernel-build-kit:gcc-arm-none-eabi-latest -f Dockerfile_gcc-arm-none-eabi .
```

### zig with gcc-arm-none-eabi

```sh
docker buildx build --platform linux/amd64,linux/arm64 --build-arg http_proxy=http://host.docker.internal:3142 --push -t mikoto2000/che-toppers-kernel-build-kit:che-zig-with-gcc-arm-none-eabi-latest -f Dockerfile_zig-with-gcc-arm-none-eabi .
```

