FROM codercom/code-server:3.4.1

ARG git_url=https://github.com/krismuniz/minimal-starter.git

RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

RUN sudo npm install -g nodemon

RUN mkdir /home/coder/project
RUN git clone $git_url /home/coder/project

WORKDIR /home/coder/project