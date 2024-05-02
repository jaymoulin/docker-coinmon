FROM node:alpine
ARG VERSION
ARG TARGETPLATFORM
LABEL maintainer="Jay MOULIN <jaymoulin@gmail.com>"
LABEL version="${VERSION}-${TARGETPLATFORM}"
RUN yarn add coinmon

ENTRYPOINT ["/node_modules/coinmon/src/index.js"]
CMD []
