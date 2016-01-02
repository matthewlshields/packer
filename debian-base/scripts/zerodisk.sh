#!/bin/bash
set +e
# Zero out the free space to save space in the final image:
dd if=/dev/zero of=/EMPTY bs=1M || true
sleep 20
rm -f /EMPTY || true
sleep 20

set -e