FROM ubuntu:trusty

ENV TOX_VERSION 2.3.1

RUN gpg --keyserver keyserver.ubuntu.com --recv-keys DB82666C \
 && gpg --export DB82666C | apt-key add -

RUN gpg --keyserver keyserver.ubuntu.com --recv-keys 68854915 \
 && gpg --export 68854915 | apt-key add -

RUN echo deb http://ppa.launchpad.net/fkrull/deadsnakes/ubuntu trusty main >> /etc/apt/sources.list \
 && echo deb-src http://ppa.launchpad.net/fkrull/deadsnakes/ubuntu trusty main >> /etc/apt/sources.list

RUN echo deb http://ppa.launchpad.net/pypy/ppa/ubuntu trusty main >> /etc/apt/sources.list \
 && echo deb-src http://ppa.launchpad.net/pypy/ppa/ubuntu trusty main >> /etc/apt/sources.list

RUN apt-get update \
 && apt-get install -y \
    git \
    curl \
    python2.3-dev \
    python2.4-dev \
    python2.5-dev \
    python2.6-dev \
    python2.7-dev \
    python3.1-dev \
    python3.2-dev \
    python3.3-dev \
    python3.4-dev \
    python3.5-dev \
    python3.6-dev \
    pypy-dev \
 && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://bootstrap.pypa.io/get-pip.py | pypy
RUN curl -fsSL https://bootstrap.pypa.io/get-pip.py | python2.7
RUN pip install tox==$TOX_VERSION
