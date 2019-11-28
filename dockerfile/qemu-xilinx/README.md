# qemu-xilinx

qemu-xilinx と gdb-multiarch を含んだスタック。

## Build

### with GDB

```sh
docker build -t mikoto2000/che-qemu-xilinx:latest .
```

### without GDB

```sh
docker build -t mikoto2000/che-qemu-xilinx:latest_without_gdb .
```

