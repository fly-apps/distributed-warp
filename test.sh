#!/bin/sh

set -e 

source keys.sh
bin/warp_darwin_arm64 mixed --obj.size 64M --concurrent 64 --warp-client $(./private_ips.sh) --bucket perftest --tls --warp-client $(./private_ips.sh) --host gateway.storjshare.io --access-key $AWS_ACCESS_KEY_ID --secret-key $AWS_SECRET_ACCESS_KEY
