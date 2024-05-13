#!/bin/bash -e

curl -fsSL https://pkgs.tailscale.com/stable/raspbian/bullseye.noarmor.gpg >"${ROOTFS_DIR}/usr/share/keyrings/tailscale-archive-keyring.gpg"
curl -fsSL https://pkgs.tailscale.com/stable/raspbian/bullseye.tailscale-keyring.list >"${ROOTFS_DIR}/etc/apt/sources.list.d/tailscale.list"

on_chroot <<- \EOF
	ARCH="$(dpkg --print-architecture)"
	apt-get update
EOF
