#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")"

shellcheck run-rubocop.sh
./run-rubocop.sh
