#!/usr/bin/env bash

set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 /path/to/openclaw/workspace"
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
TEMPLATE_DIR="${REPO_ROOT}/workspace-template"
TARGET_DIR="$1"

mkdir -p "${TARGET_DIR}"
mkdir -p "${TARGET_DIR}/memory"

cp "${TEMPLATE_DIR}/AGENTS.md" "${TARGET_DIR}/AGENTS.md"
cp "${TEMPLATE_DIR}/SOUL.md" "${TARGET_DIR}/SOUL.md"
cp "${TEMPLATE_DIR}/CAT.md" "${TARGET_DIR}/CAT.md"
cp "${TEMPLATE_DIR}/USER.md" "${TARGET_DIR}/USER.md"
cp "${TEMPLATE_DIR}/MEMORY.md" "${TARGET_DIR}/MEMORY.md"
cp "${TEMPLATE_DIR}/BOOTSTRAP.md" "${TARGET_DIR}/BOOTSTRAP.md"

echo "PawClaw workspace initialized at ${TARGET_DIR}"
echo "Next step: run the first linked session, then remove BOOTSTRAP.md after onboarding is complete."
