FROM debian:buster

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y curl sudo && \
    curl -fsSL https://code-server.dev/install.sh | sh

CMD ["code-server", "--auth", "none", "--host", "0.0.0.0", "--port", "8080"]
