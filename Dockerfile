FROM ubuntu:20.10

RUN apt-get update -y && apt-get upgrade && apt-get install git curl vim ca-certificates -y

RUN curl -s https://storage.googleapis.com/golang/go1.15.11.linux-amd64.tar.gz | tar -v -C /usr/local -xz

ENV GOPATH /go
ENV GOROOT /usr/local/go
ENV PATH $PATH:/usr/local/go/bin
