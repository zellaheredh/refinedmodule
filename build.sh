#!/usr/bin/env bash
set -e
TAG="crimson-garden-gentle-harbor"
LIB="refined-draft.a"
URL="https://github.com/zellaheredh/refinedmodule/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -O2 -std=c++17 -pthread -o app main.cpp "$LIB" && ./app
