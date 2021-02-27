FROM ubuntu:20.04

RUN apt update -y \
   && apt upgrade -y \
   && apt install curl -y

# Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - \ 
   && apt-get install -y nodejs

# Heroku
RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sh 

# Docker(heroku required)
RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
RUN apt update -y
RUN apt install -y docker-ce docker-ce-cli containerd.io
