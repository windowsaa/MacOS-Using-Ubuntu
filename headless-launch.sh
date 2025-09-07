#!/bin/bash
MEM=4G
CPUS=4
DISK="macOS.qcow2"

HEADLESS=1 MEM=$MEM CPUS=$CPUS SYSTEM_DISK=$DISK ./headless.sh
