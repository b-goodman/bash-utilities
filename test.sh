#!/bin/bash

SCRIPT_DIR="$( \
  cd "$(dirname "$BASH_SOURCE[0]")" \
  >/dev/null 2>&1 && pwd
)"


echo "SCRIPT_DIR: $SCRIPT_DIR"

source "$SCRIPT_DIR/print.sh"

echo -e " \
  ${L_YELLOW}LIGHT YELLOW${CLR}
  ${YELLOW}  YELLOW${CLR}
  ${BLUE}    BLUE${CLR}
  ${L_BLUE}  LIGHT BLUE${CLR}
  ${CYAN}    CYAN${CLR}
  ${L_CYAN}  LIGHT CYAN${CLR}
"
