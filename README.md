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




If you want to get the jmcad desktop after closing it please follow the following steps

On the desktop, right click the mouse to get the fluxbox menu



To get the jamcad panel

On the menu go to sub menus and ckick Applications>Shells>Bash

There is an enother option

On The menu go to sub menus and click Applications>Programming>Monodoc(http)

How to change the timezone

After quitting the jmcad

On the terminal enter

vim /etc/timezone

Then the timezone file is opened

Go to the top line of the file , press insert key on your key board and enter your timezone ( ie Asia/Colombo)

Then press the Esc key and Shift :x to save & quit the file
