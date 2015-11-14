FROM ubuntu:latest

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF \
  && echo "deb http://repos.mesosphere.io/ubuntu `lsb_release -cs` main" | tee /etc/apt/sources.list.d/mesosphere.list \
  && apt-get -y update \
  && apt-get -y install mesos
