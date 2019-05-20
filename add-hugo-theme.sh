#!/usr/bin/env sh
git clone --depth 1 --recursive https://github.com/meibenny/elephants themes/elephants
echo 'theme = "elephants"' >> config.toml
