FROM ubuntu

RUN apt update && apt clean && apt install -y \
   xterm\
   firefox \
   alsa-base \
   chromium-browser \
   paxctld \
   linux-grsec-base \
   wget \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list \
    && apt-get update && apt-get -y install google-chrome-beta
    
ENV DISPLAY :0

RUN useradd chr \
    && mkdir -p /home/chr/ \
    && chown -v -R chr:chr /home/chr

USER chr
