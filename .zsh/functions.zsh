# Create a new directory and enter it
function mkd() {
  mkdir -p "$@" && cd "$@"
}

# find shorthand
function f() {
  find . -name "$1"
}

function tunnel(){
if ps x | grep ssh | grep cctv; then
  echo "Tunnel already Running"
  proxy on
else
  ssh -D 8080 -f -C -q -N cctv@su
  echo "Tunnel Started"
  proxy on
fi
}

# Start an HTTP server from a directory, optionally specifying the port
function server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"
  # Set the default Content-Type to `text/plain` instead of `application/octet-stream`
  # And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
  python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

# git log with per-commit cmd-clickable GitHub URLs (iTerm)
function gf() {
  local remote="$(git remote -v | awk '/^origin.*\(push\)$/ {print $2}')"
  [[ "$remote" ]] || return
  local user_repo="$(echo "$remote" | perl -pe 's/.*://;s/\.git$//')"
  git log $* --name-status --color | awk "$(cat <<AWK
  /^.*commit [0-9a-f]{40}/ {sha=substr(\$2,1,7)}
  /^[MA]\t/ {printf "%s\thttps://github.com/$user_repo/blob/%s/%s\n", \$1, sha, \$2; next}
  /.*/ {print \$0}
AWK
  )" | less -F
}

# Test if HTTP compression (RFC 2616 + SDCH) is enabled for a given URL.
# Send a fake UA string for sites that sniff it instead of using the Accept-Encoding header. (Looking at you, ajax.googleapis.com!)
function httpcompression() {
  encoding="$(curl -LIs -H 'User-Agent: Mozilla/5 Gecko' -H 'Accept-Encoding: gzip,deflate,compress,sdch' "$1" | grep '^Content-Encoding:')" && echo "$1 is encoded using ${encoding#* }" || echo "$1 is not using any encoding"
}

# Syntax-highlight JSON strings or files
function json() {
  if [ -p /dev/stdin ]; then
  # piping, e.g. `echo '{"foo":42}' | json`
  python -mjson.tool | pygmentize -l javascript
  else
  # e.g. `json '{"foo":42}'`
  python -mjson.tool <<< "$*" | pygmentize -l javascript
  fi
}

# take this repo and copy it to somewhere else minus the .git stuff.
function gitexport(){
  mkdir -p "$1"
  git archive master | tar -x -C "$1"
}

# get gzipped size
function gz() {
  echo "orig size  (bytes): "
  cat "$1" | wc -c
  echo "gzipped size (bytes): "
  gzip -c "$1" | wc -c
}

# All the dig info
function digga() {
  dig +nocmd "$1" any +multiline +noall +answer
}

# Escape UTF-8 characters into their 3-byte format
function escape() {
  printf "\\\x%s" $(printf "$@" | xxd -p -c1 -u)
  echo # newline
}

# Decode \x{ABCD}-style Unicode escape sequences
function unidecode() {
  perl -e "binmode(STDOUT, ':utf8'); print \"$@\""
  echo # newline
}

# Extract archives - use: extract <file>
# Credits to http://dotfiles.org/~pseup/.bashrc
function extract() {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz) tar xzf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) rar x $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xf $1 ;;
      *.tbz2) tar xjf $1 ;;
      *.tgz) tar xzf $1 ;;
      *.zip) unzip $1 ;;
      *.Z) uncompress $1 ;;
      *.7z) 7z x $1 ;;
      *) echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

function rga-fzf() {
  RG_PREFIX="rga --files-with-matches"
  local file
  file="$(
    FZF_DEFAULT_COMMAND="$RG_PREFIX '$1'" \
      fzf --sort --preview="[[ ! -z {} ]] && rga --pretty --context 5 {q} {}" \
        --phony -q "$1" \
        --bind "change:reload:$RG_PREFIX {q}" \
        --preview-window="70%:wrap"
  )" &&
  echo "opening $file" &&
  $EDITOR "$file"
}

: "${CPU_BRAND:=$(/usr/sbin/sysctl -n machdep.cpu.brand_string)}"
if [ -n "$(echo $CPU_BRAND | grep -o 'Apple')" -a -x "$(command -v arch)" ]; then
  function switch-arch() {
    if [ "$(uname -m)" = "arm64" ]; then
      arch="x86_64"
    elif [ "$(uname -m)" = "x86_64" ]; then
      arch="arm64e"
    fi
    exec arch -arch $arch "$SHELL"
  }
fi
