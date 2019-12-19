#!/bin/sh

set -e

sudo yum -y update
sudo yum -y upgrade

sudo yum install -y \
    device-mapper-persistent-data \
    git \
    lvm2 \
    vim \
    yum-utils \
    zsh

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io

sudo usermod -aG docker $(whoami)

sudo systemctl enable docker.service
sudo systemctl start docker.service

sudo yum install -y \
    centos-release-scl \
    rh-python36

# scl enable rh-python36 bash
echo "source /opt/rh/rh-python36/enable" >> ~/.bash_profile
source ~/.bash_profile
sudo bash -c 'echo "source /opt/rh/rh-python36/enable" >> /root/.bash_profile'

sudo yum install -y \
    epel-release \
    python-pip

sudo pip3 install docker-compose

sudo yum -y upgrade python*

sudo yum -y autoremove
sudo yum -y clean all
