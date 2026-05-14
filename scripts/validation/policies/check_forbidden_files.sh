#!/usr/bin/env bash

set -e

forbidden_patterns=(
  "*.tfstate"
  "*.pem"
  "*.key"
  "*.p12"
  "*.zip"
)

for pattern in "${forbidden_patterns[@]}"; do
  matches=$(find . -type f -name "$pattern")

  if [[ -n "$matches" ]]; then
    echo "[FAIL] Forbidden files detected for pattern: $pattern"
    echo "$matches"
    exit 1
  fi
done

echo "[PASS] No forbidden files detected."