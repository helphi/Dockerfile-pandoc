FROM frolvlad/alpine-glibc:alpine-3.5

RUN apk --no-cache add biber\
    make\
    rsync\
    tar\
    libarchive-tools\
    gmp\
    curl\
    texlive-full \
    texlive-xetex
    
RUN curl -Lsf 'https://github.com/jgm/pandoc/releases/download/1.19.2.1/pandoc-1.19.2.1-1-amd64.deb'\
    | bsdtar xOf - data.tar.gz\
    | tar xvz --strip-components 2 -C /usr/local
