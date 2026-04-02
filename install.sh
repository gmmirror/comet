#!/usr/bin/env bash

if [[ ! -d "${PREFIX}/tmp" ]]; then
    command mkdir -p "${PREFIX}/tmp"
fi

if [[ -d "${PREFIX}/tmp/comet" ]]; then
    command rm -rf "${PREFIX}/tmp/comet"
fi

if [[ -d "${PREFIX}/opt/comet" ]]; then
    command rm -rf "${PREFIX}/opt/comet"
fi

if [[ -x "${PREFIX}/bin/comet" ]]; then
    command rm -f "${PREFIX}/bin/comet"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Comet' \
    "${PREFIX}/tmp/comet"

cd "${PREFIX}/tmp/comet" || exit 1
command chmod +x -R "install.sh"
command bash "install.sh"
cd