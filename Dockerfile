FROM fedora:31 as build-tools

RUN dnf -y install \
    golang \
    make \
    tar \
    findutils \
    python3 \
    docker \
    git \
    htop \
    perl-Digest-SHA \
    && dnf clean all

ENTRYPOINT [ "/bin/bash" ]
