#!/usr/bin/env bash
# Builds dist/superdeck.zip with the superdeck/ folder at its root, the
# layout Claude.ai expects for an uploaded skill. Run from anywhere.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
skill="superdeck"
skill_md="$root/skills/$skill/SKILL.md"
out="$root/dist/$skill.zip"

fail() { echo "error: $*" >&2; exit 1; }

[ -f "$skill_md" ] || fail "missing skills/$skill/SKILL.md"
command -v zip >/dev/null || fail "zip is not installed"

# Frontmatter: the block between the first two '---' lines.
frontmatter="$(awk 'NR==1 && $0!="---"{exit} NR>1 && $0=="---"{exit} NR>1{print}' "$skill_md")"
[ -n "$frontmatter" ] || fail "SKILL.md has no frontmatter"

unquote() { sed -E 's/^"(.*)"$/\1/; s/\\"/"/g'; }
name="$(printf '%s\n' "$frontmatter" | sed -n 's/^name:[[:space:]]*//p' | unquote)"
description="$(printf '%s\n' "$frontmatter" | sed -n 's/^description:[[:space:]]*//p' | unquote)"

[ "$name" = "$skill" ] || fail "frontmatter name is '$name', but the folder is '$skill'"
[ -n "$description" ] || fail "frontmatter has no description"
desc_len="$(printf '%s' "$description" | wc -m | tr -d ' ')"
[ "$desc_len" -le 1024 ] || fail "description is $desc_len characters; the limit is 1024"

lines="$(wc -l < "$skill_md" | tr -d ' ')"
[ "$lines" -lt 500 ] || fail "SKILL.md has $lines lines; keep it under 500"

mkdir -p "$root/dist"
rm -f "$out"
(cd "$root/skills" && zip -qrX "$out" "$skill" -x '*.DS_Store' -x '*/.*')

echo "Built dist/$skill.zip (SKILL.md: $lines lines, description: $desc_len characters)"
unzip -l "$out" | awk 'NR>3 && $4 != "" {print "  " $4}' | sed '$d'
