#!/bin/bash

set -e 

ips=$(fly ips private --json | jq -r '.[] .PrivateIP |  "["+ . + "]:5555"' | paste -sd "," -)

echo $ips
