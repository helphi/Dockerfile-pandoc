FROM ubuntu:bionic-20181018

ENV LANG=C.UTF-8 TZ=Asia/Shanghai

RUN apt update &&\
    DEBIAN_FRONTEND=noninteractive apt install -y wget --no-install-recommends &&\
    apt autoremove -y && apt clean && rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*

RUN wget --no-check-certificate https://github.com/jgm/pandoc/releases/download/2.4/pandoc-2.4-1-amd64.deb -O pandoc-2.4-1-amd64.deb &&\
    dpkg -i pandoc-2.4-1-amd64.deb &&\
    rm -rf pandoc-2.4-1-amd64.deb

CMD [ "pandoc", "--help" ]