FROM mhart/alpine-node:base-6.10.0

ENV PATH /root/.yarn/bin:$PATH

# Current packages
RUN apk update && apk add --no-cache make gcc g++ python git wget curl bash binutils tar
# Bleeding edge installs for yarn
# RUN echo "ipv6" >> /etc/modules \
#     && echo "http://dl-1.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
#     && echo "http://dl-2.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
#     && echo "http://dl-3.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
#     && echo "http://dl-4.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
#     && echo "http://dl-5.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
RUN touch ~/.bashrc \
    && curl -o- -L https://yarnpkg.com/install.sh | bash 
