FROM node:20.11.0
RUN apt-get update
RUN apt-get install -y locales
RUN locale-gen ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP
ENV LANG=ja_JP.UTF-8
ENV TZ=Asia/Tokyo
WORKDIR /app
RUN apt-get install -y openssl
RUN apt-get install -y git openssh-client
RUN npm install -g npm
