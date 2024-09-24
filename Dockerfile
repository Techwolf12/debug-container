FROM debian:testing

RUN apt update
RUN apt -y upgrade
# Install default packages
RUN apt -y install curl git wget iperf procps apt-transport-https ca-certificates gnupg
# Install GCloud
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" > /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
RUN apt -y update
RUN apt -y install google-cloud-cli
# Debug tools
RUN apt -y install procps bsdextrautils
RUN mkdir /tools
RUN curl -Lo /tools/pid2pod https://github.com/k8s-school/pid2pod/releases/download/v0.0.1/pid2pod-linux-amd64
RUN curl -Lo /tools/inotify-consumers https://raw.githubusercontent.com/fatso83/dotfiles/master/utils/scripts/inotify-consumers
RUN chmod uga+x /tools/*

