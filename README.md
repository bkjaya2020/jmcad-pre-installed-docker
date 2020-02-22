# A docker image pre-installed jmcad based on solarkennedy/wine-x11-novnc-docker
A docker image pre-installed jmcad based on solarkennedy/wine-x11-novnc-docker


docker image  bkjaya1952/jmcad - pre-installed with JMCAD-09.157.                                    

forked from Kyle Anderson's  solarkennedy/wine-x11-novnc-docker                                      

JMCAD from https://sourceforge.net/projects/jmcad/files/JMCAD/JMCAD-09.157/JMCAD-09.157.zip/download                                                     

Thanks to Yuriy Mikhaylovskiy owner of JMCAD    YuriyMikhaylovskiy@yahoo.com                         #    

Thanks to  Kyle Anderson and Nicolas SAPA 

To create a smath container (name jmcad) using bkjaya1952/jmcad-docker

Refer:- https://hub.docker.com/r/bkjaya1952/jmcad-docker

On the Ubuntu terminal

sudo docker create -t -p 8228:8080 --name smath bkjaya1952/jmcad-docker

sudo docker start jmcad

xdg-open http://localhost:8228

Then the jmcad desktop will appear on the web browser at the startup.

<img src="https://raw.githubusercontent.com/bkjaya2020/jmcad-docker/master/Screenshot%20from%202020-02-17%2008-42-11.png?token=ANVLIGYXLADHQJMPQOENAKK6KDYJO" alt="https://raw.githubusercontent.com/https://raw.githubusercontent.com/bkjaya2020/jmcad-docker/master/Screenshot%20from%202020-02-17%2008-42-11.png?token=ANVLIGYXLADHQJMPQOENAKK6KDYJO" width="625" height="520">



