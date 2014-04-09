# drone ruby base
FROM  ubuntu
MAINTAINER Jesse Nelson <spheromak@gmail.com>

RUN apt-get update
RUN apt-get install curl -y

# install docker runtime
RUN curl -s https://get.docker.io/ubuntu/ | sh

# ruby 2.1
RUN apt-get install python-software-properties -y
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update
RUN apt-get install ruby2.1 ruby2.1-dev  libxslt-dev libxml2-dev -y
RUN apt-get install build-essential -y
RUN locale-gen en_US.UTF-8

# preload gems
ADD Gemfile /tmp/Gemfile
RUN gem install bundler
RUN cd /tmp/; bundle install
