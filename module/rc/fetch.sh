#!/usr/bin/env bash

# Run somethingfetch everytime the shell is started
BashrcFetchOk="1"
echo # absolutely required

# Allow fetching to be disabled with a nofetch file
# this is what i do now on my main computer. the years have passed, the novelty of running
# a fetch program on startup is getting old, as is a lot of stuff in these configs actually...
[ ! -f "$HOME/.nofetch" ] && {
    "$HOME"/configs/ultra_fetcher_9000.py || BashrcFetchOk="0"
}
