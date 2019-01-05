#!/bin/sh
  
set -euo pipefail



if [[ $# -ge 1 ]]; then
  echo "command parameter >$@< supplied" $@
  exec frontail --disable-usage-stats $@
else
  echo "Using $LOG_FILES" $LOG_FILES
  exec frontail --disable-usage-stats $LOG_FILES
fi
