#!/usr/bin/env bash

set -e

required_dirs=(
  "detections"
  "terraform"
  "governance"
  "scripts"
  "evidence"
  "docs"
)

for dir in "${required_dirs[@]}"; do
  if [[ ! -d "$dir" ]]; then
    echo "[FAIL] Missing required directory: $dir"
    exit 1
  fi
done

echo "[PASS] Required documentation present."