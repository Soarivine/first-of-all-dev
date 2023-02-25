FROM node:18

WORKDIR /root

RUN apt update && apt install -y git vim

RUN wget https://go.dev/dl/go1.20.1.linux-amd64.tar.gz

RUN tar -C /usr/local -xzf go1.20.1.linux-amd64.tar.gz

RUN echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc

RUN rm go1.20.1.linux-amd64.tar.gz
