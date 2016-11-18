FROM alpine:latest

MAINTAINER Adrian Mouat <adrian.mouat@container-solutions.com>
RUN apk add --no-cache \
        iputils \
        curl \
        drill \
        netcat-openbsd \
        jq \
        nmap \
        net-tools

COPY Dockerfile /Dockerfile
LABEL org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vcs-url="https://github.com/amouat/network-utils-container"
     
