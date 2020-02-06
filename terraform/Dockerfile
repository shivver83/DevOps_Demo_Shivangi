FROM hashicorp/terraform:latest

WORKDIR /app

COPY . /app
RUN \
  apk update && \
  apk add bash py-pip && \
  apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python-dev make && \
  pip install azure-cli && \
  apk del --purge build  

RUN az login --use-device-code

RUN ["terraform", "init"]
CMD [ "apply"]
