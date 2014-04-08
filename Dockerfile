# drone ruby base
FROM bradrydzewski/ruby:2.0.0
MAINTAINER Jesse Nelson <spheromak@gmail.com>

RUN sudo apt-get update

# install docker runtime
RUN curl -s https://get.docker.io/ubuntu/ | sudo sh

# preload gems
ADD Gemfile /home/ubuntu/Gemfile
RUN /home/ubuntu/.rbenv/bin/rbenv exec bundle install
