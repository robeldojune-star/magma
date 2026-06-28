#!/usr/bin/env bash
set -euo pipefail
BASE="/home/june/magma"
TS=$(date +%Y%m%d_%H%M%S)
OUT="$BASE/backups/magma_${TS}.tar.gz"
tar -czf "$OUT" -C "$BASE" company research design decision tasks reports
printf '%s|%s\n' "$TS" "$OUT" >> "$BASE/backups/backup_log.tsv"
