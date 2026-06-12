#!/usr/bin/env bash
set -euo pipefail

echo "[INFO] Validating Terraform configuration..."

cd terraform
terraform init -backend=false
terraform validate

echo "[PASS] Terraform validation passed."
