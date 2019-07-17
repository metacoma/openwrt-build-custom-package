FROM ubuntu:bionic

RUN apt-get update && apt install -y build-essential libncurses5-dev python unzip git zlibc gawk wget zlib1g-dev curl

git config --global user.email "you@example.com"
git config --global user.name "Your Name"



WORKDIR /openwrt




