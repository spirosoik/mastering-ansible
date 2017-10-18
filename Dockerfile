FROM ubuntu:16.04

RUN apt-get -qq update \
    && apt-get -y install software-properties-common \
    && apt-add-repository ppa:ansible/ansible \
    && apt-get -qq update \
    && apt-get -y install ansible

WORKDIR /ansible-code
ADD . /ansible-code
