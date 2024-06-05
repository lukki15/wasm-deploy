#!/bin/sh

# get wasm4
wget https://github.com/aduros/wasm4/releases/latest/download/w4-linux.zip
unzip w4-linux.zip
rm w4-linux.zip
sudo mv w4 /usr/bin

# get wasm-opt
sudo apt update
sudo apt install binaryen

# get WSI SDK
export WASI_VERSION=22
export WASI_VERSION_FULL=${WASI_VERSION}.0
wget https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-${WASI_VERSION}/wasi-sdk-${WASI_VERSION_FULL}-linux.tar.gz
tar xvf wasi-sdk-${WASI_VERSION_FULL}-linux.tar.gz
rm wasi-sdk-${WASI_VERSION_FULL}-linux.tar.gz
sudo mv wasi-sdk-${WASI_VERSION_FULL} /workspaces
export WASI_SDK_PATH=/workspaces/wasi-sdk-${WASI_VERSION_FULL}