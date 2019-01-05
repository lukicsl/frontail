#!/usr/bin/env bash
  
set -euo pipefail



if [[ $# -ge 1]]; then
  exec frontail --disable-usage-stats "$@"
else
  exec frontail --disable-usage-stats $LOG_FILES
fi
