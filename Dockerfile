FROM ubuntu:latest

#install rdma libs
RUN apt-get update && apt-get -y install libibverbs1 ibverbs-utils librdmacm1 libibumad3 ibverbs-providers rdma-core

#install tools
RUN apt-get update && apt-get -y install gcc make iproute2

#create lib iccl
WORKDIR /iccl
COPY ./comm_lib/* .