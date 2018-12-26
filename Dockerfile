FROM ubuntu:18.04
MAINTAINER Paul Grove <paul.grove@gmail.com>

ENV TERM screen-256color
ENV DEBIAN_FRONTEND noninteractive

# Install Packages
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:neovim-ppa/stable
RUN apt-get update
RUN apt-get install -y \
	build-essential \
	wget \
	curl \
	git \
	ctags \
	unzip \
	libssl-dev \
	cmake \
	locales \
	neovim

# Setup Locale
RUN locale-gen en_GB.UTF-8
ENV LANG en_GB.UTF-8
ENV LANGUAGE en_GB:en
ENV LC_ALL en_GB.UTF-8

CMD ["/bin/bash"]
