#!/usr/bin/env bash

set -e

echo "[INFO] Running markdown lint validation..."

markdownlint "**/*.md"

echo "[PASS] Markdown validation successful."