#!/usr/bin/env bash

[[ -d "${PREFIX}/tmp/comet" ]] && {
    command rm -rfv "${PREFIX}/tmp/comet"
}

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Comet' \
    "${PREFIX}/tmp/comet"

cd "${PREFIX}/tmp/comet" || exit 1
command chmod +x -Rv "install.sh"
command bash "install.sh"
cd

exit 0