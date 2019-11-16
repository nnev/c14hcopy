#!/bin/bash
set -e
CPYDIR="${TMPDIR?}"/$(date --iso-8601)
mkdir -p "$CPYDIR"
find "$CAMDIR" -mindepth 1 -ctime -1 -execdir cp '{}' "$CPYDIR" ';'
echo "Finished copying cam files from today. It is now safe to remove the Camera." > /irc/chaos-hd
