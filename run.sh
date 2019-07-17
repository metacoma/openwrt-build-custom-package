#!/bin/sh

. ./env

docker run --rm -it             \
  -v `pwd`/openwrt:${WORKDIR}   \
  -e FORCE_UNSAFE_CONFIGURE=1   \
  -w ${WORKDIR}                 \
  --entrypoint /bin/sh          \
  ${IMAGE_NAME}                  \
  -c /bin/bash
