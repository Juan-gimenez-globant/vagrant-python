#!/bin/sh

apt-get update
apt-get -y install \
    build-essential autoconf sudo make curl wget git vim \
    openssl libssl-dev ca-certificates software-properties-common supervisor \
    libjpeg8 libjpeg-dev libpq-dev libffi-dev libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev libgdal-dev libedit-dev llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python-openssl

apt-get upgrade -y
