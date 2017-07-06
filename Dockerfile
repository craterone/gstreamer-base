FROM ubuntu:16.04
MAINTAINER CC <chencong@learning-tech.com>

RUN apt-get update
RUN apt-get install --force-yes -y --fix-missing autoconf autopoint libtool bison flex gtk-doc-tools \
    libglib2.0-dev freeglut3 freeglut3-dev yasm libreadline-dev \
    libx264-dev libvo-aacenc-dev libopus-dev wget git librtmp-dev cmake
    
RUN apt-get clean


COPY requirements.sh ./

RUN chmod +x requirements.sh
RUN ./requirements.sh