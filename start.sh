#!/usr/bin/env bash

docker run -d --name hecomainnetnet1.1 \
           -v `pwd`:/root/hecomainnet \
           -p 8545:8545 \
           -p 30303:30303 \
           -p 8546:8546 \
           --restart=unless-stopped \
           hecofans/geth:1.1 \
           geth-linux-amd64 --config /root/hecomainnet/config.toml  \
                --logpath /root/hecomainnet/data/logs \
                --syncmode full \
                --gcmode archive \
                --verbosity 3
