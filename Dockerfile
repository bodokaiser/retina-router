FROM alpine:edge

ADD *.conf /etc/nginx/

RUN apk add -U nginx

# workaround on 500 respond on image POSTs
RUN chown -R nginx /var/lib/nginx 

CMD ["nginx"]

EXPOSE 80
#EXPOSE 443
