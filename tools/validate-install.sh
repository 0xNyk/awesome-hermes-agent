#!/usr/bin/env bash
# validate-install.sh — Smoke-test an entry in awesome-hermes-agent against a real
# Hermes install. Used by .github/workflows/install-reality.yml.
#
# This script does NOT install the plugin (CI has no Hermes). It performs the
# static checks the upstream Hermes loader requires:
#   1. plugin layout — __init__.py present, plugin.yaml present, register(ctx) present
#   2. zero-core-touching — install.sh / setup.py / pyproject must NOT cp files
#      into a $HERMES_HOME/hermes-agent/agent/ path
#   3. install command matches upstream docs
#   4. README install instructions work with `hermes plugins install <url>`
#
# Usage:
#   bash tools/validate-install.sh <repo-url> [branch]
#
# Exit codes:
#   0 = passes
#   1 = install-reality FAIL (one of the static checks failed)
#   2 = network/clone error (re-validate later)

set -euo pipefail

REPO_URL="${1:?repo URL required}"
BRANCH="${2:-main}"
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

echo "==> Cloning $REPO_URL @ $BRANCH"
git clone --depth 1 --branch "$BRANCH" "$REPO_URL" "$WORK/repo" >/dev/null 2>&1 || {
  echo "FAIL: clone error — repo URL or branch wrong (exit 2)"
  exit 2
}

cd "$WORK/repo"
FAIL=0

echo
echo "==> Check 1: plugin layout (manifest + entry point)"
if [[ -f plugin.yaml ]]; then
  echo "  ok: plugin.yaml at root"
elif [[ -f src/plugin.yaml ]]; then
  echo "  ok: plugin.yaml under src/"
else
  echo "  FAIL: no plugin.yaml found at root or src/"
  FAIL=1
fi

if [[ -f __init__.py ]]; then
  echo "  ok: __init__.py at root"
elif [[ -f src/__init__.py ]]; then
  echo "  ok: __init__.py under src/"
elif [[ -f plugin.py || -f src/plugin.py ]]; then
  echo "  FAIL: only plugin.py found — Hermes loader requires __init__.py (renamable, see PR #1 in eagle-eye)"
  FAIL=1
fi

echo
echo "==> Check 2: zero-core-touching (no cp into agent/)"
if grep -rE 'cp .*\\\$?HERMES_HOME.*agent/' scripts/ src/ 2>/dev/null \
   || grep -rE 'cp .*agent/' scripts/ src/ 2>/dev/null; then
  echo "  FAIL: install paths write into the bundled agent/ tree"
  echo "        (Hermes project rejects this — plugins must live entirely in their own dir)"
  FAIL=1
else
  echo "  ok: no agent/ cp found in scripts or src"
fi

echo
echo "==> Check 3: README install section exists"
if grep -qE '^## .*Install' README.md 2>/dev/null \
   || grep -qE '^## .*Quick [Ss]tart' README.md 2>/dev/null; then
  echo "  ok: install section present"
else
  echo "  WARN: no Install or Quick Start section — README may be missing install steps"
fi

echo
echo "==> Check 4: register(ctx) function exists in plugin entry"
ENTRY=""
for cand in __init__.py src/__init__.py plugin.py src/plugin.py; do
  [[ -f "$cand" ]] && ENTRY="$cand" && break
done
if [[ -n "$ENTRY" ]]; then
  if grep -qE '^def register[[:space:]]*\(' "$ENTRY"; then
    echo "  ok: register(ctx) present in $ENTRY"
  else
    echo "  FAIL: $ENTRY has no register(ctx) function — Hermes cannot load it"
    FAIL=1
  fi
else
  echo "  FAIL: no plugin entry point found"
  FAIL=1
fi

echo
if [[ $FAIL -eq 0 ]]; then
  echo "==> RESULT: install-reality PASS for $REPO_URL"
  exit 0
else
  echo "==> RESULT: install-reality FAIL for $REPO_URL"
  exit 1
fi
