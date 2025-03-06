FROM debian:stable

RUN apt update
RUN apt -y upgrade
# Install default packages
RUN apt -y install curl git wget iperf procps apt-transport-https ca-certificates gnupg jq apache2-utils
# Install GCloud
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" > /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
RUN apt -y update
RUN apt -y install google-cloud-cli
# Debug tools
RUN curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash
RUN apt -y install procps bsdextrautils speedtest-cli
RUN mkdir /tools
RUN curl -Lo /tools/pid2pod https://github.com/k8s-school/pid2pod/releases/download/v0.0.1/pid2pod-linux-amd64
RUN curl -Lo /tools/inotify-consumers https://raw.githubusercontent.com/fatso83/dotfiles/master/utils/scripts/inotify-consumers
RUN curl -L https://github.com/vadimi/grpc-client-cli/releases/download/v1.22.0/grpc-client-cli_linux_x86_64.tar.gz | tar -C /tools -xz
RUN chmod uga+x /tools/*

LABEL org.opencontainers.image.description='Techwolf12 Kubernetes debug container with helpful tools' \
  org.opencontainers.image.title='Techwolf12 Kubernetes debug container' \
  org.opencontainers.image.source='https://github.com/Techwolf12/debug-container/' \
  io.artifacthub.package.readme-url='https://raw.githubusercontent.com/Techwolf12/debug-container/refs/heads/main/README.md' \
  io.artifacthub.package.maintainers='[{"name":"Christiaan de Die le Clercq", "email":"contact@techwolf12.nl"}]'
