FROM alpine:3.12

RUN apk --update add --no-cache bash sftp expect \
  && rm -rf /var/cache/apk/*

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]