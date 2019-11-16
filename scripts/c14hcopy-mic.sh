#!/bin/bash
set -e
CPYDIR="${TMPDIR?}"/$(date --iso-8601)
mkdir -p "$CPYDIR"
find "$MICDIR" -mindepth 1 -ctime -1 -execdir cp '{}' "$CPYDIR" ';' -execdir echo "copying '{}'" '>' /irc/chaos-hd ';'
