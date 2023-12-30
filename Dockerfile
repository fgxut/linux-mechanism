FROM ubuntu:20.04

# Avoid interactive questions when installing packages
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    binutils \
    build-essential \
    golang \
    sysstat \
    python3-matplotlib \
    python3-pil \
    fonts-takao \
    fio \
    qemu-kvm \
    virt-manager \
    libvirt-clients \
    virtinst \
    jq \
    docker.io \
    containerd \
    libvirt-daemon-system \
    git \
    strace

RUN git clone https://github.com/satoru-takeuchi/linux-in-practice-2nd.git

RUN adduser `id -un` libvirt
RUN adduser `id -un` libvirt-qemu
RUN adduser `id -un` kvm
