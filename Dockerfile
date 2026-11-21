FROM ubuntu:26.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    build-essential \
    gcc-riscv64-linux-gnu \
    qemu-system-riscv \
    gdb-multiarch \
    bc \
    perl \
    python3 \
    procps \
    clang-format \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /root/src
WORKDIR /root/src

ENTRYPOINT []
CMD ["/bin/bash"]
