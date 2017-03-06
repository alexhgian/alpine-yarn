FROM node:6.10.0-alpine

# Add yarn package
RUN echo "ipv6" >> /etc/modules \
    && echo "http://dl-1.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && echo "http://dl-2.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && echo "http://dl-3.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && echo "http://dl-4.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && echo "http://dl-5.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
RUN apk add yarn
