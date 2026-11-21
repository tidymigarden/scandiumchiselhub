#!/usr/bin/env bash
set -e
LIB="matcha-hearth.a"
TAG="frosty-cedar-clever-canyon"
REPO="tidymigarden/scandiumchiselhub"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -o app -std=c++17 -pthread -O2 main.cpp "$LIB" && ./app
