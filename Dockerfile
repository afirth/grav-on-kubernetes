FROM alpine
# install the grav skeleton

RUN apk add --no-cache curl unzip

RUN curl -sSL https://github.com/hibbitts-design/grav-skeleton-open-publishing-space/releases/download/v1.5.0/grav-skeleton-open-publishing-space-site.zip -o zip
RUN unzip zip && rm zip && mv grav-skeleton-open-publishing-space-site grav

