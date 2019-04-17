FROM alpine:3.9
# install the grav skeleton

RUN apk add --no-cache curl unzip rsync
RUN curl -sSL https://github.com/hibbitts-design/grav-skeleton-open-publishing-space/releases/download/v1.5.0/grav-skeleton-open-publishing-space-site.zip -o zip && \
      chmod -R 1:1 grav
#bitnami-php-fpm runs as daemon, which is 1:1 in that image
