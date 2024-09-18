# Dockerfile
# https://github.com/fcwu/docker-ubuntu-vnc-desktop

FROM dorowu/ubuntu-desktop-lxde-vnc

RUN sudo sed -i 's|http://tw.|http://de.|g' /etc/apt/sources.list && \
    sudo sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E88979FB9B30ACF2 && \
    sudo apt update && \
    sudo apt -y install dirmngr

RUN sudo add-apt-repository -y ppa:pbek/qownnotes
RUN sudo add-apt-repository -y ppa:nextcloud-devs/client

#RUN sudo apt -y upgrade
RUN sudo apt -y install qownnotes fish nextcloud-client less mc htop git vim inetutils-ping

# allow nextcloud sync client to be run in docker image
RUN sed -i 's|Exec=nextcloud|Exec=env QTWEBENGINE_DISABLE_SANDBOX=1 nextcloud|g' /usr/share/applications/com.nextcloud.desktopclient.nextcloud.desktop

RUN chsh -s /usr/bin/fish root
ADD data /root
