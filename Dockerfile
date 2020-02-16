#############################################################################################
# docker image  bkjaya1952/jmcad                                                            #
# forked from Kyle Anderson's  solarkennedy/wine-x11-novnc-docker                           #
# JMCAD from https://sourceforge.net/projects/jmcad/                                        #
# Thanks to  Kyle Anderson and Nicolas SAPA  !                                              #
# Thanks to JMCAD developers                                                                #
#############################################################################################
FROM  solarkennedy/wine-x11-novnc-docker 
MAINTAINER B.K.Jayasundera
ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive
RUN apt update 
RUN apt install -y xfce4-terminal \
    && apt install -y tzdata \
    && apt install -y vim \
    && apt install -y default-jdk \
    && apt -y autoremove
COPY JMCAD-09.157.zip /JMCAD-09.157.zip
RUN unzip /JMCAD-09.157.zip
RUN rm /JMCAD-09.157.zip 
RUN chmod +x /JMCAD-09.157/JMCAD.jar
COPY bash.bashrc /etc/bash.bashrc
COPY jmcad.sh /usr/bin/jmcad.sh
RUN chmod 777 /usr/bin/jmcad.sh
RUN unlink /etc/localtime
EXPOSE 8080
CMD ["/usr/bin/supervisord"]


