FROM alpine:latest

RUN addgroup -S -g 18345 named && adduser -D -H -G named -u 18345 named && apk --update add bind=9.12.3-r0

EXPOSE 53

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
