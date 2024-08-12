FROM debian:testing

RUN apt update
RUN apt -y upgrade
RUN apt -y install curl git wget iperf procps
