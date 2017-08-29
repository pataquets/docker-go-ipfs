FROM pataquets/go-ipfs

COPY ./ipfs_config .
RUN \
  sed -i "/\#IPFS_CONFIG$/r ipfs_config" \
    /usr/local/bin/start_ipfs && \
  nl /usr/local/bin/start_ipfs \
  && \
  grep "^  ipfs config --json Swarm.AddrFilters '\[$" \
    /usr/local/bin/start_ipfs
