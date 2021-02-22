#!/usr/bin/env bash

docker run -d --name hecomainnet1.1 \
           -v `pwd`:/root/hecomainnet \
           -p 8555:8545 \
           -p 30313:30303 \
           -p 8556:8546 \
           --restart=unless-stopped \
           hecofans/geth:1.1 \
           geth-linux-amd64 --config /root/hecomainnet/config.toml  \
                --logpath /root/hecomainnet/data/logs \
                --verbosity 3
