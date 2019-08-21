# Terraform / Alpine Linux Docker

Includes AWSCLI and Terraform latest version available in edge repository.

## Usage

Run:

```bash
$ docker run gbalbuena/terraform-alpine:v0.12.0 version
Terraform v0.12.0
```

## Build image

```bash
$ docker build -t gbalbuena/terraform-alpine:v0.12.0 .
...
Successfully built 1ad3332335ed
Successfully tagged terraform-alpine:v0.12.0
```

## Push

```bash
$ docker push gbalbuena/terraform-alpine:v0.12.0
...
```

## List images

```bash
$ docker images | grep terraform-alpine
terraform-alpine latest
```
