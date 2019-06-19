FROM alpine:edge

MAINTAINER Juan Gabriel Balbuena Borba (gabrielbalbuena@gmail.com)

RUN apk add --update \
  ca-certificates \
  terraform
RUN apk add aws-cli \
  --update-cache \
  --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
  --allow-untrusted

ADD . /app
WORKDIR /app

RUN aws --version
RUN terraform -v

CMD echo "Hello World"
