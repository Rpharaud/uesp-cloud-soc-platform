#!/usr/bin/env bash
set -euo pipefail

echo "[INFO] Running UESP validation suite..."

./scripts/validation/ci/check_required_docs.sh
./scripts/validation/ci/check_required_dirs.sh
./scripts/validation/ci/check_markdown.sh
./scripts/validation/policies/check_forbidden_files.sh
./scripts/validation/policies/check_naming_conventions.sh
./scripts/validation/evidence/check_evidence_structure.sh
./scripts/validation/infrastructure/check_terraform_fmt.sh
./scripts/validation/infrastructure/check_terraform_validate.sh

echo "[PASS] UESP validation suite completed successfully."
