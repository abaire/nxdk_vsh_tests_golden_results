#!/usr/bin/env bash
set -eu
set -o pipefail

readonly test_output_dir='e:\vsh\nxdk_vsh_tests\'

if [[ $# -gt 0 ]]; then
  xbox=$1
else
  if [[ -z "${XBOX:-}" ]]; then
    xbox="192.168.80.87"
  else
    xbox="${XBOX}"
  fi
fi


echo "Collecting output of nxdk_vsh_tests from ${xbox}..."
xbdm "${xbox}" getfile "${test_output_dir}" .

