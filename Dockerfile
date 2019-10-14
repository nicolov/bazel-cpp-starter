FROM ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        bc \
        build-essential \
        ca-certificates \
        python \
        tmux \
        unzip \
        vim \
        wget \
    && \
    rm -rf /var/lib/apt/lists/*

RUN wget -O /tmp/bazel-installer https://github.com/bazelbuild/bazel/releases/download/1.0.0/bazel-1.0.0-installer-linux-x86_64.sh \
    && chmod +x /tmp/bazel-installer \
    && /tmp/bazel-installer \
    && rm /tmp/bazel-installer

RUN bazel version
