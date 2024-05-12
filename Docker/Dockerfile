# Try to build this and see how this fucker deals with clustering
# https://medium.com/@r1ckyr3c0n/havoc-c2-framework-part-1-installation-2024-2fbb8a1fe31c
# https://havocframework.com/docs/installation
# root@4e18e3ae7da0:/Havoc# 

# Pull Debian Bookworm Image from DockerHubcode 
# Try change it to Alpine and use APK to install all the stuff
FROM debian:12.5 

# Install basic packages on the machine 
RUN echo 'deb http://ftp.de.debian.org/debian bookworm main' >> /etc/apt/sources.list
RUN apt update -y && apt upgrade -y
#RUN apt install git curl wget python3-dev python3.10-dev libpython3.10 libpython3.10-dev python3.10 -y
RUN apt install -y git curl wget python3 sudo
RUN apt install -y build-essential apt-utils cmake libfontconfig1 libglu1-mesa-dev libgtest-dev libspdlog-dev libboost-all-dev libncurses5-dev libgdbm-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev libbz2-dev mesa-common-dev qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools libqt5websockets5 libqt5websockets5-dev qtdeclarative5-dev golang-go qtbase5-dev libqt5websockets5-dev python3-dev libboost-all-dev mingw-w64 nasm
RUN apt install -y libcap2-bin

# Build havoc server
RUN git clone https://github.com/HavocFramework/Havoc.git
RUN rm Havoc/profiles/havoc.yaotl
COPY ./havoc.yaotl profiles/
RUN cd Havoc/ && make ts-build

# Create non-root user and set session 
ARG DOCKER_USER=symbiont
RUN adduser $DOCKER_USER 
RUN usermod $DOCKER_USER -G adm
USER $DOCKER_USER 

# Fix File permissions 
RUN chown /Havoc/* $DOCKER_USER 

# Start havoc server 
# https://kinsta.com/blog/dockerfile-entrypoint/
ENTRYPOINT ["sudo", "/Havoc/havoc", "server", "--profile profiles/havoc.yaotl", "-v", "--debug"]
#RUN ./havoc server --profile profiles/havoc.yaotl -v --debug

# Install proxychains tor and harden shit for avoiding account take over 
# Think about putting up some kali tools after dealing with basic shit
# Check if there's any perf imp from container and k8s 
