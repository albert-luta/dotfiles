gh() {
  local wanted current

  if [[ "$1" == "auth" ]]; then
    command gh "$@"
    return
  fi

  case "$PWD" in
    "$HOME/projects/work"|"$HOME/projects/work/"*)
      wanted="albert-luta-epam"
      ;;
    *)
      wanted="$(git config --get user.ghAccount 2>/dev/null)"
      ;;
  esac

  if [[ -z "$wanted" ]]; then
    command gh "$@"
    return
  fi

  current="$(command gh auth status --active --hostname github.com \
    --json hosts --jq '.hosts["github.com"][0].login // empty' 2>/dev/null)"

  if [[ "$current" != "$wanted" ]]; then
    command gh auth switch --hostname github.com --user "$wanted" >/dev/null || {
      printf 'Could not switch gh account to: %s\n' "$wanted" >&2
      return 1
    }
  fi

  command gh "$@"
}
