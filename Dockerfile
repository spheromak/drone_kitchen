# drone ruby base
FROM  ubuntu
MAINTAINER Jesse Nelson <spheromak@gmail.com>

RUN apt-get update
RUN apt-get install curl -y

RUN curl -L https://www.opscode.com/chef/install.sh | sudo bash -s -- -P chefdk
RUN locale-gen en_US.UTF-8

RUN chef gem install kitchen-docker
RUN chef gem update rubocop
