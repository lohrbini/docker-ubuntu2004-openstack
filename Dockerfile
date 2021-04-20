FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y libffi-dev openssl python3 musl build-essential python3-botocore python3-boto3 python3-dev python3-pip git bash unzip ansible-lint openssh-client docker docker-compose

RUN pip3 install pytest-testinfra pytest ansible ruamel.yaml "openstacksdk<0.52" molecule "requests>=2.23.0" molecule-openstack docker jmespath python-designateclient "decorator===4.4.0" future


