# Dockerfile
# https://github.com/fcwu/docker-ubuntu-vnc-desktop

FROM dorowu/ubuntu-desktop-lxde-vnc

#ENV DEBIAN_FRONTEND noninteractive

RUN sudo sed -i 's|http://tw.|http://de.|g' /etc/apt/sources.list && sudo apt update && sudo apt -y install dirmngr

RUN sudo add-apt-repository -y ppa:pbek/qownnotes
RUN sudo add-apt-repository -y ppa:nextcloud-devs/client

RUN sudo apt -y upgrade
RUN sudo apt -y install qownnotes fish nextcloud-client less mc htop git vim inetutils-ping


#RUN sudo useradd -s /usr/bin/fish omega
#RUN sudo chsh -s /usr/bin/fish ubuntu

# Run it
#EXPOSE 22
#CMD ["/usr/sbin/sshd", "-D"]

RUN touch /root/test.txt

#CMD ["/usr/local/bin/init.sh"]

