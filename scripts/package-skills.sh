#!/usr/bin/env bash
# Builds one zip per skill in dist/, each with the skill's folder at its root,
# the layout Claude.ai expects for an uploaded skill. With no arguments it
# packages every folder in skills/; pass skill names to package only those.
# Run from anywhere.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

fail() { echo "error: $*" >&2; exit 1; }
command -v zip >/dev/null || fail "zip is not installed"

if [ "$#" -gt 0 ]; then
  skills=("$@")
else
  skills=()
  for dir in "$root"/skills/*/; do skills+=("$(basename "$dir")"); done
fi
[ "${#skills[@]}" -gt 0 ] || fail "no skills found in skills/"

unquote() { sed -E 's/^"(.*)"$/\1/; s/\\"/"/g'; }

package() {
  local skill="$1"
  local skill_md="$root/skills/$skill/SKILL.md"
  local out="$root/dist/$skill.zip"

  [ -f "$skill_md" ] || fail "missing skills/$skill/SKILL.md"

  # Frontmatter: the block between the first two '---' lines.
  local frontmatter name description desc_len lines
  frontmatter="$(awk 'NR==1 && $0!="---"{exit} NR>1 && $0=="---"{exit} NR>1{print}' "$skill_md")"
  [ -n "$frontmatter" ] || fail "$skill: SKILL.md has no frontmatter"

  name="$(printf '%s\n' "$frontmatter" | sed -n 's/^name:[[:space:]]*//p' | unquote)"
  description="$(printf '%s\n' "$frontmatter" | sed -n 's/^description:[[:space:]]*//p' | unquote)"

  [ "$name" = "$skill" ] || fail "$skill: frontmatter name is '$name', but the folder is '$skill'"
  [ -n "$description" ] || fail "$skill: frontmatter has no description"
  desc_len="$(printf '%s' "$description" | wc -m | tr -d ' ')"
  [ "$desc_len" -le 1024 ] || fail "$skill: description is $desc_len characters; the limit is 1024"

  lines="$(wc -l < "$skill_md" | tr -d ' ')"
  [ "$lines" -lt 500 ] || fail "$skill: SKILL.md has $lines lines; keep it under 500"

  mkdir -p "$root/dist"
  rm -f "$out"
  (cd "$root/skills" && zip -qrX "$out" "$skill" -x '*.DS_Store' -x '*/.*')

  echo "Built dist/$skill.zip (SKILL.md: $lines lines, description: $desc_len characters)"
  unzip -l "$out" | awk 'NR>3 && $4 != "" {print "  " $4}' | sed '$d'
}

for skill in "${skills[@]}"; do package "$skill"; done
