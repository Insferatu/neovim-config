#!/usr/bin/env bash

# $1 is the file path from Telescope
git log --date="format:%Y-%m-%d %H:%M" --pretty="format:%C(auto)%<(9)%h %<(17)%ad %<(20,trunc)%aN %s" --follow $1 >/tmp/gitlog && echo "" >> /tmp/gitlog && cat /tmp/gitlog
