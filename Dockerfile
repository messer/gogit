FROM golang:1.18-alpine

ENV GO111MODULE on
ENV CGO_ENABLED 0
ENV GOOS linux
ENV GOARCH amd64

RUN apk --no-cache --update add busybox-extras git samurai curl build-base
RUN go install golang.org/x/lint/golint@latest
RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest

WORKDIR /workdir

