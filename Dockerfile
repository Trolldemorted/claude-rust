FROM rust

ENV PATH="$PATH:/root/.local/bin"
ENV IS_SANDBOX=1
WORKDIR /workdir

RUN rustup component add rustfmt clippy
RUN curl -fsSL https://claude.ai/install.sh | bash

ENTRYPOINT sleep 999999999