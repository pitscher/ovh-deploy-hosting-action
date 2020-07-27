FROM alpine:3.12

RUN apk --update add --no-cache bash openssh-client sshpass \
  && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]