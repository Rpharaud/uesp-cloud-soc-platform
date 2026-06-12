#!/usr/bin/env bash
set -euo pipefail

echo "[INFO] Checking Terraform formatting..."

cd terraform
terraform fmt -recursive -check

echo "[PASS] Terraform formatting check passed."
