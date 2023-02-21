FROM alpine:latest
  
ENV version=1.3.7

WORKDIR /terraform

RUN apk add --no-cache openssh wget curl \
   && wget https://releases.hashicorp.com/terraform/${version}/terraform_${version}_linux_amd64.zip \
   && unzip terraform_${version}_linux_amd64.zip \
   && mv terraform /usr/bin/terraform
