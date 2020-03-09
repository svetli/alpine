FROM scratch

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="Svetli Nikolov <me@svetli.name>" \
    alpine-version="3.11.4" \
    architecture="amd64/x86_64" \
    org.opencontainers.image.title="alpine" \
    org.opencontainers.image.description="Docker image running on Alpine Linux" \
    org.opencontainers.image.authors="Svetli Nikolov <me@svetli.name>" \
    org.opencontainers.image.version="v3.11.4" \
    org.opencontainers.image.url="https://hub.docker.com/r/svetli/alpine/" \
    org.opencontainers.image.source="https://github.com/svetli/alpine" \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.created=$BUILD_DATE

ADD alpine-minirootfs-3.11.4-x86_64.tar.gz /
CMD ["/bin/sh"]