# A docker image pre-installed jmcad based on solarkennedy/wine-x11-novnc-docker
JMCAD is a program for the modeling and simulation of complex dynamic systems. This includes the ability to construct and simulate block diagrams. The visual block diagram interface offers a simple method for constructing, modifying and maintaining complex system models. The simulation engine provides fast and accurate solutions for linear, nonlinear, continuous time, discrete time, time varying and hybrid system designs. With JMCAD, users can quickly develop software or "virtual" prototypes of systems or processes to demonstrate their behavior prior to building physical prototypes. 

Please refer the following link of the JMCD developers for further details of JMCAD software

http://jmcad.sourceforge.net/index_us.shtml

docker image  bkjaya1952/jmcad - pre-installed with JMCAD-09.157.                                    

JMCAD from https://sourceforge.net/projects/jmcad/files/JMCAD/JMCAD-09.157/JMCAD-09.157.zip/download                                                     

Thanks to Yuriy Mikhaylovskiy owner of JMCAD    YuriyMikhaylovskiy@yahoo.com                         #    

To create a smath container (name jmcad) using bkjaya1952/jmcad-pre-installed-docker

Refer:-https://hub.docker.com/r/bkjaya1952/jmcad-pre-installed-docker

On the Ubuntu terminal

<code>sudo docker create -t -p 8228:8080 --name jmcad --privileged=true bkjaya1952/jmcad-pre-installed-docker

sudo docker start jmcad

xdg-open http://localhost:8228</code>

Then the jmcad desktop will appear on the web browser at the startup.

<img src="https://raw.githubusercontent.com/bkjaya2020/jmcad-pre-installed-docker/master/Screenshot%20from%202020-02-17%2008-42-11.png" alt="https://raw.githubusercontent.com/bkjaya2020/jmcad-pre-installed-docker/master/Screenshot%20from%202020-02-17%2008-42-11.png" class="shrinkToFit" width="625" height="520">


If you want to get the jmcad desktop after closing it please follow the following steps

On the desktop, right click the mouse to get the fluxbox menu


<img src="https://raw.githubusercontent.com/bkjaya2020/jmcad-pre-installed-docker/master/menu1.png" alt="https://raw.githubusercontent.com/bkjaya2020/jmcad-pre-installed-docker/master/menu1.png" class="shrinkToFit" width="625" height="520">


<img src="https://raw.githubusercontent.com/bkjaya2020/jmcad-pre-installed-docker/master/menu2.png" alt="hhttps://raw.githubusercontent.com/bkjaya2020/jmcad-pre-installed-docker/master/menu2.png" class="shrinkToFit" width="625" height="520">



To get the jamcad panel

On the menu go to sub menus and ckick Applications>Shells>Bash

There is an enother option

On The menu go to sub menus and click Applications>Programming>Monodoc(http)

How to change the timezone

After quitting the jmcad

On the terminal enter

<code>vim /etc/timezone</code>

Then the timezone file is opened

Go to the top line of the file , press insert key on your key board and enter your timezone ( ie Asia/Colombo)

Then press the Esc key and Shift :x to save & quit the file
