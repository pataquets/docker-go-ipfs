FROM ipfs/go-ipfs

RUN \
  apk --no-cache add coreutils \
  && \
  sed -i "s/tcp\/8080$fi/8080\n  \#IPFS_CONFIG/" \
    /usr/local/bin/start_ipfs \
  && \
  nl /usr/local/bin/start_ipfs \
  && \
  grep "^  \#IPFS_CONFIG$" /usr/local/bin/start_ipfs
