FROM alpine:3.5
MAINTAINER "Christophe Gasmi <cga@oxalide.com>"
ENV TERRAFORM_VERSION=0.10.8
RUN apk add --update --no-cache curl git bash wget graphviz ttf-freefont
ADD https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip ./
RUN unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin && rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip
