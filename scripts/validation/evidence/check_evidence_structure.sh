#!/usr/bin/env bash

set -e

echo "[INFO] Checking evidence structure..."

required_dirs=(
  "evidence/logs"
  "evidence/reports"
  "evidence/screenshots"
)

for dir in "${required_dirs[@]}"; do
  if [[ ! -d "$dir" ]]; then
    echo "[FAIL] Missing evidence directory: $dir"
    exit 1
  fi
done

echo "[PASS] Evidence structure validated successfully."