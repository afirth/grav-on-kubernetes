FROM alpine:3.9
# install the grav skeleton

RUN apk add --no-cache curl unzip

RUN mkdir app && \
      curl -sSL https://github.com/hibbitts-design/grav-skeleton-open-publishing-space/releases/download/v1.5.0/grav-skeleton-open-publishing-space-site.zip -o zip && \
      unzip -q zip && rm zip && mv grav-skeleton-open-publishing-space-site grav
