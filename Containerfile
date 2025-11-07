FROM ghcr.io/ublue-os/bluefin

LABEL org.opencontainers.image.source="https://github.com/delsplurge/tim-bluefin-clean"

RUN --mount=type=cache,target=/var/cache/dnf \
    dnf install -y guvcview v4l-utils && \
    dnf clean all
