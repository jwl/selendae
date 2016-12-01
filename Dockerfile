FROM ubuntu:latest
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
MAINTAINER James Leung, james.warren.leung@gmail.com

RUN apt-get update && apt-get install -y \
	git \
	curl \
	software-properties-common \
	python \
	build-essential

# node installing setup
ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 7.1.0

# Install nvm with node and npm
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash \
	&& source $NVM_DIR/nvm.sh \
	&& nvm install $NODE_VERSION \
	&& nvm alias default $NODE_VERSION \
	&& nvm use default

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH

# create directory to store contents of local directory
RUN mkdir /usr/local/src/src
RUN cd /usr/local/src/src
