# 
#	NGINX Docker
#

FROM alpine:3.5
MAINTAINER Augustinas Beck <augustinas@managed.lt>

# Install nginx
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.3/main" >> /etc/apk/repositories && \
    apk add --update nginx=1.12.2-r5 && \
    rm -rf /var/cache/apk/* && \
    chown -R nginx:www-data /var/lib/nginx

# Add the files
ADD root /

# Expose the ports for nginx
EXPOSE 80 443