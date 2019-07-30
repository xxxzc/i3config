#!/bin/sh

case "${SRANDRD_OUTPUT} ${SRANDRD_EVENT}" in
  "DP1 connected") autorandr -l dual;;
  "DP1 disconnected") autorandr -l one;;
esac
