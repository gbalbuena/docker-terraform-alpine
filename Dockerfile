FROM alpine:edge

LABEL author="Juan Gabriel Balbuena Borba (gabrielbalbuena@gmail.com)"
LABEL version="v0.12.0"

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

ENTRYPOINT [ "/usr/bin/terraform" ]
