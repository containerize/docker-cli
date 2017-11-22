FROM docker:stable

RUN apk add --no-cache bash openssh

COPY entrypoint.sh /usr/local/bin

ENTRYPOINT ["entrypoint.sh"]
