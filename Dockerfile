# Dockerfile to build https://github.com/certnanny/sscep
# @author Per Abildgaard Toft <p@t1.dk>
# https://github.com/cpertoft/sscep-docker/


FROM debian:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install --assume-yes locales less gettext build-essential git autoconf libtool openssl libssl-dev pkg-config
RUN apt-get clean

WORKDIR /usr/local/src/

RUN git clone https://github.com/certnanny/sscep.git

WORKDIR /usr/local/src/sscep
RUN autoheader
RUN libtoolize
RUN aclocal
RUN automake -a -c -f 
RUN automake --add-missing
RUN autoreconf
RUN ./configure
RUN make
RUN make install
RUN rm -rf /usr/local/src/sscep
WORKDIR /root
