FROM golang:alpine

ENV GO111MODULE on
ENV CGO_ENABLED 0
ENV GOOS linux
ENV GOARCH amd64

RUN apk --no-cache --update add busybox-extras git samurai curl build-base
RUN go get -u golang.org/x/lint/golint

WORKDIR /workdir

