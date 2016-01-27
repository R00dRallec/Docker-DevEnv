FROM debian:latest
MAINTAINER Christian Becker <christian.becker.mail@gmx.de>
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/R00dRallec/Docker-DevEnv ~/DDE
RUN sh ~/DDE/scripts/postinstall.sh
