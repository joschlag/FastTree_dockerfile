FROM ubuntu:24.04

RUN apt update && \
	apt upgrade -y && \
	apt install -y git make g++ && \
	apt clean

WORKDIR /usr/src

RUN git clone https://github.com/tsibley/FastTree.git && \
	cd FastTree/ && \
	make

ENV PATH=${PATH}:/usr/src/FastTree/bin
