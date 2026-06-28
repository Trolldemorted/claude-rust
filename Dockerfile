FROM rust

ENV PATH="$PATH:/root/.local/bin"
ENV IS_SANDBOX=1
WORKDIR /workdir

RUN apt-get update && apt-get install -y --no-install-recommends tmux nano iputils-ping netcat-openbsd postgresql-client
RUN echo "set -g mouse on" >> /root/.tmux.conf
RUN echo 'export PATH="/usr/local/cargo/bin:$PATH:/root/.local/bin"' >> /root/.bashrc
RUN rustup component add rustfmt clippy
RUN curl -fsSL https://claude.ai/install.sh | bash

ENTRYPOINT sleep 999999999
