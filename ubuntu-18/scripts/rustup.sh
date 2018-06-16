#!/bin/bash

# This install script is intended to install Rust Toolchain.
#
# Environment variables:
# - RUST_VERSION: the version to install

# Download the shell script
wget "https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init"

# Install Rust toolchain
chmod +x rustup-init
./rustup-init -y --no-modify-path --default-toolchain ${RUST_VERSION}
rm rustup-init
chmod -R a+w /usr/local/rustup /usr/local/cargo

# Print the installed versions
rustup --version
rustc --version
cargo --version
