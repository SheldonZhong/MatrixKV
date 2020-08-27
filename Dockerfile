FROM ubuntu

WORKDIR /root

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" \
    apt-get install -y --no-install-recommends \
                  build-essential cmake libgtest.dev \
                  git python default-jre curl

RUN apt-get install -y --no-install-recommends \
    libpmem1 librpmem1 libpmemblk1 \
    libpmemlog1 libpmemobj1 libpmempool1 \
    libpmem-dev librpmem-dev libpmemblk-dev \
    libpmemlog-dev libpmemobj-dev \
    libpmempool-dev libpmempool-dev \
    libsnappy-dev libgflags-dev

COPY . ./MatrixKV

RUN cd MatrixKV && \
    make -j

