FROM quay.io/sporkmonger/secure-bootstrap
MAINTAINER Bob Aman <bob@sporkmonger.com>

RUN apk add --update gcc g++ libgcc make musl-dev libc-dev \
  linux-headers libffi-dev git go go-tools && \
  rm -rf /var/cache/apk/*

RUN mkdir -p /go/src && \
  mkdir -p /go/pkg && \
  mkdir -p /go/bin

ENV PATH /go/bin:/usr/src/go/bin:$PATH
ENV GOPATH /go
ENV GOLANG_VERSION 1.4.2
WORKDIR /go

CMD [ "/bin/bash" ]
