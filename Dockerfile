FROM alpine:latest
ENV PATH=$PATH:/usr/local/go/bin
ENV GOPATH=/go
ENV GODEBUG=cgocheck=0
COPY go1.6.linux-amd64.tar.gz go1.6.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.6.linux-amd64.tar.gz && \
  export PATH=$PATH:/usr/local/go/bin && \
  mkdir /go && \
  export GOPATH=/go && \
  mkdir /go/src && \
  mkdir /go/bin && \
  mkdir /go/pkg && \
  rm /go1.6.linux-amd64.tar.gz
WORKDIR /go/src
