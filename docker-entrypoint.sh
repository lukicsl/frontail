#!/bin/sh
  
set -euo pipefail

exec frontail --disable-usage-stats $@

