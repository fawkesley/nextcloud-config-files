#!/bin/sh -eux

THIS_SCRIPT=$0
THIS_DIR=$(dirname ${THIS_SCRIPT})

# Stored key option:
# cat ${THIS_DIR}/externalhd.key | sudo cryptsetup luksOpen /dev/disk/by-uuid/1a2d6740-8c34-4daa-9e79-1e211e586a74 externalhd

# Prompt for key at command-line option:
sudo cryptsetup luksOpen /dev/disk/by-uuid/1a2d6740-8c34-4daa-9e79-1e211e586a74 externalhd


sudo mkdir -p /media/externalhd
sudo mount /dev/mapper/externalhd /media/externalhd

