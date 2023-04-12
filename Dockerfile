FROM node:18-alpine
LABEL maintainer="Peter Dave Hello <hsu@peterdavehello.org>"
ENV NPM_CONFIG_LOGLEVEL warn
RUN node --version
RUN npm  --version
RUN npm install -g doctoc && rm -rf ~/.npm
