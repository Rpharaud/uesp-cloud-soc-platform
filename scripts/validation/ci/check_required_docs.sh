#!/usr/bin/env bash

set -e

required_docs=(
  "README.md"
  "DESIGN.md"
  "THEORY.md"
  "IMPLEMENTATION.md"
  "TESTPLAN.md"
  "RISKS.md"
)

for doc in "${required_docs[@]}"; do
  if [[ ! -f "$doc" ]]; then
    echo "[FAIL] Missing required document: $doc"
    exit 1
  fi
done

echo "[PASS] Required documentation present."