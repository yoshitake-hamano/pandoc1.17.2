FROM ubuntu:17.04

MAINTAINER yoshitake.hamano "oed0cow6oy5@gmail.com"

RUN apt-get update -qq
RUN apt-get upgrade -qq

ENV HOME /root
RUN apt-get install -y texlive
RUN apt-get install -y pandoc pandoc-citeproc python-pandocfilters
RUN apt-get install -y software-properties-common
RUN add-apt-repository 'deb http://ppa.launchpad.net/kbonne/pandoc-plantuml-filter/ubuntu utopic main'
RUN apt-get update -qq
RUN apt-get install -y --allow-unauthenticated pandoc-plantuml-filter

# Cleaning
RUN apt-get clean

VOLUME /workspace
WORKDIR /workspace
