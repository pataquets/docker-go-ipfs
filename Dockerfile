FROM ipfs/go-ipfs

RUN \
  sed -i "/ipfs config Addresses.Gateway \/ip4\/0.0.0.0\/tcp\/8080$/a\ \ \#IPFS_CONFIG" \
    /usr/local/bin/start_ipfs \
  && \
  nl /usr/local/bin/start_ipfs \
  && \
  grep "^  \#IPFS_CONFIG$" /usr/local/bin/start_ipfs
