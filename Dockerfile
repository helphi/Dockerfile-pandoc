FROM ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive

RUN apt update &&\
    apt install -y pandoc=1.19.2.4 --no-install-recommends &&\
    apt autoremove -y && apt clean && rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*
