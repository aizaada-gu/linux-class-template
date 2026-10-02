FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

RUN apt-get update && apt-get install -y \
    iptables ufw nftables iproute2 net-tools nmap curl \
    vim nano tree htop man-db manpages \
    && rm -rf /var/lib/apt/lists/*
