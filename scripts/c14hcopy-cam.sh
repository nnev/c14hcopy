#!/bin/bash
set -e
echo JVCCAM found. starting copy. > /irc/chaos-hd
CPYDIR="${TMPDIR?}"/$(date --iso-8601)
mkdir -p "$CPYDIR"
find "$CAMDIR" -mindepth 1 -mtime -1 -execdir cp '{}' "$CPYDIR" ';'
umount /mnt/cam -l
echo "Finished copying cam files from today. It is now safe to remove the Camera." > /irc/chaos-hd
