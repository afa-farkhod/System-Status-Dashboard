#!/bin/bash

# function to display CPU usage
display_cpu_usage() {
  echo "CPU Load: "
  uptime | awk -F'[a-z]:' '{ print $2 }'
}

echo "=================================================="
display_cpu_usage
echo "=================================================="