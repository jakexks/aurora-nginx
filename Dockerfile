FROM gliderlabs/alpine

RUN apk-install python nginx
ADD nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /tmp/nginx && mkdir -p /srv/ && wget http://ftp.drupal.org/files/projects/drupal-7.34.tar.gz && tar -zxv -C /srv/ -f drupal-7.34.tar.gz
CMD ["nginx"]