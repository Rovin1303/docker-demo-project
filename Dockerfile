# Dockerfile - Ubuntu base with basic Linux tools and a demo script
FROM ubuntu:22.04

LABEL maintainer="you <you@example.com>"

ENV DEBIAN_FRONTEND=noninteractive

# Install useful command-line tools and clean apt cache to keep the image small
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      bash curl wget git iproute2 net-tools iputils-ping procps vim less ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Add demo script into the image
COPY demo.sh /usr/local/bin/demo.sh
RUN chmod +x /usr/local/bin/demo.sh

WORKDIR /root

# Entry: run demo script then drop into an interactive shell
ENTRYPOINT ["/usr/local/bin/demo.sh"]
CMD ["bash"]
