#!/bin/bash

declare -A defaults=(
  ["VAR_MEMCACHED_SIZE"]="10"
  ["VAR_MEMCACHED_MAX_CONNECTIONS"]="1024"
)

function ensure_defaults() {
  for k in "${!defaults[@]}"
  do
    if [ -z "${!k}" ]; then
      export $k=${defaults[$k]}
    else
      export $k="${!k}"
    fi
  done
}


ensure_defaults

exec su heap -m -s /bin/bash -c "/usr/bin/memcached -v -m$VAR_MEMCACHED_SIZE -c$VAR_MEMCACHED_MAX_CONNECTIONS"
