#!/bin/bash

parse_opts(){
  # get input args as array
  read -ra args <<<"$@"
  # parse out options from input
  local OPTIONS=()
  for arg in "${args[@]}"; do
    if [[ "$arg" =~ ^-{1,2}[A-Za-z0-9_-]+$ ]]; then
      OPTIONS+=("$arg")
    fi
  done
  # for each input arg, test it against known options.
  # if the test passes, assign the next arg to a
  # variable derived from the arg in test.
  while [[ "${#args[@]}" -gt 0 ]]; do
    key="${args[0]}"
    value="${args[1]}"
    for opt in "${OPTIONS[@]}"; do
    info "Testing $opt"
     case "$key" in
      "$opt")
       success "Match found"
        if [[ ! "$value" =~ ^-.* ]]; then
          # generate a variable from the option name
          info "Setting $value -> $opt_var"
          opt_var=$(echo "$opt" | sed -E 's/-+/_/g')
          printf -v "$opt_var" "%s" "$value"
          break
        fi
        ;;
     esac
   done
  # drop the first elem from input args
  args=("${args[@]:1}")
  done
}
