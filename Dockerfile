FROM frolvlad/alpine-glibc:alpine-3.5

RUN sed -i -e 's/v3\.5/edge/g' /etc/apk/repositories
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories

RUN apk --no-cache add texlive-full \
    texlive-xetex \
    biber \
    make \
    rsync \
    tar \
    libarchive-tools \
    gmp \
    curl
    
RUN curl -Lsf 'https://github.com/jgm/pandoc/releases/download/1.19.2.1/pandoc-1.19.2.1-1-amd64.deb'\
    | bsdtar xOf - data.tar.gz\
    | tar xvz --strip-components 2 -C /usr/local
