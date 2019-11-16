#!/bin/bash
set -e
CPYDIR="${TMPDIR?}"/$(date --iso-8601)
mkdir -p "$CPYDIR" 2>/dev/tty1
find "$CAMDIR" -mindepth 1 -ctime 0 -execdir cp '{}' "$CPYDIR" ';' 2>/dev/tty1
