#!/usr/bin/env bash

set -e -o pipefail

function mariadb_file_name () {
  local version=$1
  local os=$(uname | tr '[:upper:]' '[:lower:]')
  local arch=$(uname -m)

  echo "mariadb-${version}-${os}-systemd-${arch}.tar.gz"
}
