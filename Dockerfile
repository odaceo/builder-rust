ARG BUILDER_VERSION

FROM odaceo/builder:${BUILDER_VERSION}

LABEL vendor="Odaceo"
LABEL maintainer="Alexandre GARINO <alexandre.garino@odaceo.ch>"

ARG RUST_VERSION
ENV RUSTUP_HOME /usr/local/rustup
ENV CARGO_HOME /usr/local/cargo
ENV PATH ${CARGO_HOME}/bin:${PATH}
COPY scripts/rustup.sh /root/
RUN set -eux; /root/rustup.sh
