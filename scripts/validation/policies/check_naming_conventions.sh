#!/usr/bin/env bash

set -e

echo "[INFO] Checking repository naming conventions..."

invalid_names=$(find . \
  -not -path "./.git/*" \
  -not -path "./node_modules/*" \
  -not -path "./terraform/.terraform/*" \
  | grep -E '[A-Z ]' \
  | grep -vE '^./(README|DESIGN|THEORY|TESTPLAN|RISKS|IMPLEMENTATION|EVIDENCE|DETECTIONS)\.md$|^./docs/architecture/[A-Z_]+\.md$|^./governance/.*/[A-Z_]+\.md$' \
  || true)

echo "[DEBUG] Invalid names detected:"
echo "$invalid_names"

if [[ -n "$invalid_names" ]]; then
  echo "[FAIL] Invalid file or directory naming detected."
  exit 1
fi

echo "[PASS] Naming convention validation passed."