FROM ubuntu:eoan

# environment variables
ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1024 \
    DISPLAY_HEIGHT=768

RUN apt-get update && apt-get -y install xvfb x11vnc xdotool git unzip supervisor net-tools fluxbox gnupg2
RUN apt-get -y full-upgrade && apt-get clean
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf


RUN apt update \ 
    && apt install -y --no-install-recommends xfce4-terminal tzdata default-jdk unzip \    
    && rm -rf /var/lib/apt/lists/* \ 
    && apt -y autoremove


WORKDIR /root/
RUN git clone https://github.com/novnc/noVNC.git /root/noVNC \
        && git clone https://github.com/novnc/websockify /root/noVNC/utils/websockify \
        && sed -i -- "s/ps -p/ps -o pid | grep/g" /root/noVNC/utils/launch.sh

RUN rm -rf /root/noVNC/.git \
	&& rm -rf /root/noVNC/utils/websockify/.git 

COPY jmcad.zip /jmcad.zip
RUN unzip /jmcad.zip \
    && rm /jmcad.zip \
    && apt -y purge unzip
COPY bash.bashrc /etc/bash.bashrc
COPY jmcad.sh /usr/bin/jmcad.sh
RUN chmod 777 /usr/bin/jmcad.sh \
    && unlink /etc/localtime

EXPOSE 8080
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
