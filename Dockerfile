# Dockerfile
# https://github.com/fcwu/docker-ubuntu-vnc-desktop

FROM dorowu/ubuntu-desktop-lxde-vnc

#ENV DEBIAN_FRONTEND noninteractive

RUN sudo sed -i 's|http://tw.|http://de.|g' /etc/apt/sources.list && sudo apt update && sudo apt -y install dirmngr

RUN sudo add-apt-repository -y ppa:pbek/qownnotes
RUN sudo add-apt-repository -y ppa:nextcloud-devs/client
# for smartgithg
RUN sudo add-apt-repository -y ppa:eugenesan/ppa
RUN sudo add-apt-repository -y ppa:peek-developers/stable

RUN sudo apt -y upgrade
RUN sudo apt -y install qownnotes fish nextcloud-client less mc htop git qtcreator qt5-default g++ qttools5-dev build-essential qtdeclarative5-dev libqt5svg5-dev qttools5-dev-tools libqt5xmlpatterns5-dev libqt5websockets5-dev libqt5x11extras5-dev vim inetutils-ping peek smartgit

# install GitHub Hub
RUN cd /usr && curl -fsSL https://github.com/github/hub/raw/master/script/get | sudo bash -s 2.14.2


#RUN sudo useradd -s /usr/bin/fish omega
#RUN sudo chsh -s /usr/bin/fish ubuntu

# Run it
#EXPOSE 22
#CMD ["/usr/sbin/sshd", "-D"]

RUN touch /root/test.txt

#CMD ["/usr/local/bin/init.sh"]

