FROM debian:testing

RUN apt update
RUN apt -y install curl git wget iperf
