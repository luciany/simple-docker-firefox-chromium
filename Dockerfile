FROM ubuntu

RUN apt-get update && apt-get clean && apt-get install -y \
   xterm\
   chromium-browser\
   firefox \
    && apt-get update && apt-get -y dist-upgrade


ENV DISPLAY :0

RUN useradd chr \
    && mkdir -p /home/chr \
    && chown -v -R chr:chr /home/chr

USER chr
ENV HOME /home/chr
