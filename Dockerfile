########################################################################################################
# docker image  bkjaya1952/jmcad - pre-installed with JMCAD-09.157.                                    #
# forked from Kyle Anderson's  solarkennedy/wine-x11-novnc-docker                                      #
# JMCAD from https://sourceforge.net/projects/jmcad/files/JMCAD/JMCAD-09.157/JMCAD-09.157.zip/download #                                       #               
# Thanks to Yuriy Mikhaylovskiy owner of JMCAD    YuriyMikhaylovskiy@yahoo.com                         #     
# Thanks to  Kyle Anderson and Nicolas SAPA                                                            #
########################################################################################################

FROM  solarkennedy/wine-x11-novnc-docker 
MAINTAINER B.K.Jayasundera

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt purge -y winehq-stable \
    && apt autoremove --assume-yes
RUN rm -rf /opt/wine-stable/share/wine/mono \
    && rm -rf /opt/wine-stable/share/wine/gecko
RUN apt update \ 
    && apt install -y xfce4-terminal \
    && apt install -y tzdata \
    && apt install -y default-jdk \
    && apt install -y unzip \
    && apt -y autoremove
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
   
COPY jmcad.zip /jmcad.zip
RUN unzip /jmcad.zip \
    && rm /jmcad.zip
COPY bash.bashrc /etc/bash.bashrc
COPY jmcad.sh /usr/bin/jmcad.sh
RUN chmod 777 /usr/bin/jmcad.sh \
    && unlink /etc/localtime
EXPOSE 8080
CMD ["/usr/bin/supervisord"]
