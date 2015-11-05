# docker build -t rasshofer/shallot .

FROM ubuntu:latest
MAINTAINER Thomas Rasshofer <hello@thomasrasshofer.com>

RUN DEBIAN_FRONTEND=noninteractive

RUN apt-get -qq update
RUN apt-get -yqq upgrade

RUN apt-get install -yqq --force-yes build-essential git-core openssl libcurl4-openssl-dev

RUN git clone https://github.com/katmagic/Shallot.git /shallot
RUN cd /shallot && ./configure && make

RUN apt-get autoremove -yqq
RUN apt-get clean
RUN rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /shallot
