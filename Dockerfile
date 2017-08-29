FROM ipfs/go-ipfs

RUN \
  sed -i "s/tcp\/8080$fi/8080\n  \#IPFS_CONFIG/" \
    /usr/local/bin/start_ipfs && \
  grep -C 5 IPFS_CONFIG /usr/local/bin/start_ipfs
