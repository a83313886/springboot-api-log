#!/usr/bin/env bash
set -euo pipefail

if command -v mvn >/dev/null 2>&1; then
  exec mvn "$@"
fi

echo "Apache Maven (mvn) is required but was not found in PATH." >&2
exit 127
