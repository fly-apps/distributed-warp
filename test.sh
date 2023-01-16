#!/bin/bash

set -e 

ips=$(fly ips private --json | jq -r '.[] .PrivateIP' | paste -sd "," -)

echo $ips
