#!/bin/bash
set -e
echo ZOOM MIC found. starting copy. > /irc/chaos-hd
CPYDIR="${TMPDIR?}"/$(date --iso-8601)
mkdir -p "$CPYDIR"
find "$MICDIR" -mindepth 1 -mtime -1 -execdir cp -v '{}' "$CPYDIR" ';'
umount /mnt/mic -l
echo "Finished copying mic files from today. It is now safe to remove the Mic." > /irc/chaos-hd
