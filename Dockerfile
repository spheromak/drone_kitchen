# drone ruby base
FROM  ubuntu
MAINTAINER Jesse Nelson <spheromak@gmail.com>

RUN sudo apt-get update
RUN sudo apt-get install curl -y

# install docker runtime
RUN curl -s https://get.docker.io/ubuntu/ | sudo sh

# ruby 2.1
RUN sudo apt-get install python-software-properties -y
RUN sudo apt-add-repository ppa:brightbox/ruby-ng
RUN sudo apt-get update
RUN sudo apt-get install ruby2.1 ruby2.1-dev  libxslt-dev libxml2-dev -y
RUN sudo apt-get install build-essential -y

# preload gems
ADD Gemfile /tmp/Gemfile
RUN gem install bundler
RUN cd /tmp/; bundle install
