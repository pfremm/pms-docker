#!/bin/bash


s6_overlay_release=$(curl -s https://api.github.com/repos/just-containers/s6-overlay/releases/latest | jq .tag_name | tr -d \")
docker build --build-arg ARCH=aarch64 S6_OVERLAY_RELEASE=$s6_overlay_release . 