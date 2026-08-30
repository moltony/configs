#!/usr/bin/env bash

# Module loader
# it loads modules

DementiaShell=0

has_bc() {
    command -v "bc" > /dev/null 2>&1
    return $?
}

oldpwd="$(pwd)"

. "$HOME/configs/module/mdsc-init.sh"

echo -e "Loading \033[0;32m$1\033[0m"
local ModuleStartTime=$(date +%s.%N)

while IFS= read -r module; do
    if [[ -f "$module.sh" ]]; then
        . "$module.sh"
    else
        echo "Sub-module '$1' not found."
    fi
done < "module.txt"

builtin cd "$oldpwd"

DementiaShell=1
