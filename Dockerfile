FROM israfil22/docker-node:latest

RUN apt update -y \
   && apt upgrade -y \
   && apt install curl -y

# Heroku
RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
