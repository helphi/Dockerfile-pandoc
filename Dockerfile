FROM ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive

RUN apt update &&\
    apt install -y pandoc --no-install-recommends &&\
    apt autoremove -y && apt clean && rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*
