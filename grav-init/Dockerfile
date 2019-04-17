FROM alpine:3.9
# install the grav skeleton

RUN apk add --no-cache curl unzip rsync
# ensure www-data user exists
RUN set -x \
      && addgroup -g 82 -S www-data \
      && adduser -u 82 -D -S -G www-data www-data
# 82 is the standard uid/gid for "www-data" in Alpine

RUN curl -sSL https://github.com/hibbitts-design/grav-skeleton-open-publishing-space/releases/download/v1.5.0/grav-skeleton-open-publishing-space-site.zip -o zip && \
      unzip -q zip && \
      rm zip && \
      mv grav-skeleton-open-publishing-space-site grav && \
      chown -R www-data:www-data grav
