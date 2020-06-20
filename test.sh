#!/bin/bash

SCRIPT_DIR="$( \
  cd "$(dirname "$BASH_SOURCE[0]")" \
  >/dev/null 2>&1 && pwd
)"


echo "SCRIPT_DIR: $SCRIPT_DIR"

source "$SCRIPT_DIR/print.sh"

printf '%b' " 
  ${L_YELLOW}LIGHT YELLOW${CLR}
  ${YELLOW}YELLOW${CLR}
  ${BLUE}BLUE${CLR}
  ${L_BLUE}LIGHT BLUE${CLR}
  ${CYAN}CYAN${CLR}
  ${L_CYAN}LIGHT CYAN${CLR}
"
# --------------------------

source parse_opts.sh

test(){
  local _dry_run=""
  local _F=""
  parse_opts "$@"

  echo "_dry_run: $_dry_run"
  echo  "_F: $_F"
}

test --dry-run true -F test.txt
