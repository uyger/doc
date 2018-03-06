FROM centos
MAINTAINER Cloud <service@uyger.com>
RUN yum install -y git && mkdir /gopath

#RUN cd ~
#RUN wget https://studygolang.com/dl/golang/go1.9.2.linux-amd64.tar.gz
#RUN tar -C /usr/local -xzf go1.9.2.linux-amd64.tar.gz

COPY ./go /usr/local/go
ENV PATH ​$PATH:/usr/local/go/bin
ENV GOPATH /gopath

#EXPOSE 80

# docker build -t cloud/golang:1.9.2 .
# docker run --rm -v //d/Docker/gopath:/gopath -p 8080:80 -it cloud/golang:1.9.2 bash

