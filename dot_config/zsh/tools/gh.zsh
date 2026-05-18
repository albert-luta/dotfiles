gh() {
  local wanted current

  wanted="$(git config --get user.ghAccount 2>/dev/null)"

  # If not in a git repo or no mapping configured, just run gh normally
  if [[ -z "$wanted" ]]; then
    command gh "$@"
    return
  fi

  # Detect active gh account
  current="$(command gh auth status -h github.com 2>/dev/null | awk -F': ' '/Active account/ {print $2; exit}')"

  # Switch only when needed
  if [[ -n "$current" && "$current" != "$wanted" ]]; then
    command gh auth switch -h github.com -u "$wanted" >/dev/null || {
      echo "Could not switch gh account to: $wanted"
      return 1
    }
  fi

  command gh "$@"
}
