#!/bin/bash

# Zero out the free space to save space in the final image:
dd if=/dev/zero of=/boot/EMPTY bs=1M
rm -f /boot/EMPTY
dd if=/dev/zero of=/EMPTY bs=1M || true
rm -f /EMPTY || true
