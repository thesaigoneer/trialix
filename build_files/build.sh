#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y zsh
dnf5 install -y zsh-autosuggestions

dnf5 group install -y development-tools
dnf5 install -y  procps-ng curl file git

dnf5 remove -y firefox
dnf5 remove -y nvtop
dnf5 remove -y cosmic-edit
dnf5 remove -y cosmic-player


#### Example for enabling a System Unit File

systemctl enable podman.socket
