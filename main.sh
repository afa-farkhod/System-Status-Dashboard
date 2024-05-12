#!/bin/bash

# define base directory
BASEDIR=$(dirname "$0")

# utility function to run scripts
run_script(){
  SCRIPT="$1"
  if [[ -x "$SCRIPT" ]]; then
    $SCRIPT
  else
    echo "Error: '$SCRIPT' is not executable or not found"
  fi
}

# display system status
echo "=================================================="
echo "System Status Report - $(date)"
echo "=================================================="

# call cpu usage script
run_script "${BASEDIR}/cpu-usage/display_cpu_usage.sh"

# call disk usage script
run_script "${BASEDIR}/disk-usage/display_disk_usage.sh"

# call memory usage script
run_script "${BASEDIR}/memory-usage/display_memory_usage.sh"

# call running process script
run_script "${BASEDIR}/running-process/list_running_processes.sh"