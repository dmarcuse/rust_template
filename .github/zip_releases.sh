#!/usr/bin/env bash

# TODO: add support for multiple packages
NAME=$(cargo metadata --format-version 1 | jq '.packages[0].name' -r)

zip --junk-paths linux.zip target/x86_64-unknown-linux-gnu/release/$NAME
zip --junk-paths windows.zip target/x86_64-pc-windows-gnu/release/$NAME.exe
