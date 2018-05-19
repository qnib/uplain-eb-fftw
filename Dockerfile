ARG FROM_IMG_NAME=uplain-easybuild
ARG FROM_IMG_TAG=latest
ARG DOCKER_REPO=qnib
ARG DOCKER_REGISTRY=docker.io
ARG FROM_IMG_HASH=""
FROM ${DOCKER_REGISTRY}/${DOCKER_REPO}/${FROM_IMG_NAME}:${FROM_IMG_TAG}${DOCKER_IMG_HASH}

RUN apt-get install -y libibverbs-dev xsltproc pkgconf
USER user
RUN eb --dry-run-short FFTW-3.3.6-gompi-2017b.eb --robot \
 && eb FFTW-3.3.6-gompi-2017b.eb --robot
