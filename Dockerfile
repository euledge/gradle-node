FROM gradle:4.6-jdk8

LABEL maintainer "euledge"

# nvm install
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
RUN export NVM_DIR="$HOME/.nvm"
RUN . "$NVM_DIR/nvm.sh"
RUN . "$NVM_DIR/bash_completion"
# node install
RUN nvm install 10