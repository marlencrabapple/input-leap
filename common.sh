function die() {
  status="$1"
  msg="$2"
  warn "$status" "$msg"
  [[ $1 -ne 0 ]] && err=$(( $err+$1 ))
  exit $1
}

function warn() {
  status="$1"
  msg="$2"
  echo >&2 "$msg"
}
