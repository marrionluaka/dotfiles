# git_helpers.zsh
# Interactive git branch name generator
gcob() {
  local types=("feat" "fix" "chore" "refactor" "docs" "test" "style" "ci" "perf")

  # ── Step 1: Type ──────────────────────────────────────────────
  local type
  if command -v fzf &>/dev/null; then
    type=$(printf '%s\n' "${types[@]}" | fzf --prompt="type > " --height=~10 --layout=reverse --no-info)
  else
    echo "Select type:"
    select t in "${types[@]}"; do
      [[ -n "$t" ]] && type="$t" && break
    done
  fi
  [[ -z "$type" ]] && echo "Aborted." && return 1

  # ── Step 2: Ticket ────────────────────────────────────────────
  local ticket
  echo -n "ticket (e.g. ENG-30354): "
  read ticket
  [[ -z "$ticket" ]] && echo "Aborted." && return 1

  # ── Step 3: Description ───────────────────────────────────────
  local desc_raw desc
  echo -n "description (e.g. fix service button tooltips): "
  read desc_raw
  [[ -z "$desc_raw" ]] && echo "Aborted." && return 1

  # Normalise: lowercase, spaces → hyphens, strip special chars
  desc=$(echo "$desc_raw" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-')

  # ── Assemble & run ────────────────────────────────────────────
  local branch="${type}/${ticket}-${desc}"
  echo "\n  → g cob ${branch}\n"
  read "confirm?Run this? [Y/n] "
  [[ "$confirm" =~ ^[Nn] ]] && echo "Aborted." && return 1

  g cob "$branch"
}
