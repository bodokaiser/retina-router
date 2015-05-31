FROM alpine:edge

ADD *.conf /etc/nginx/

RUN apk add -U nginx

CMD ["nginx"]

EXPOSE 80
#EXPOSE 443
