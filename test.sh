#!/usr/bin/env bash
# Suite demo: dijalankan LEO di dalam bwrap (tanpa jaringan, hanya worktree yang writable).
set -euo pipefail
cd "$(dirname "$0")"
python3 - <<'PY'
from app import health

assert health() == {"status": "ok"}, health()
print("demo suite: ok")
PY
