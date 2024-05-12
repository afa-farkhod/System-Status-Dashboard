#!/bin/bash

# function to display memory usage
display_memory_usage() {
  echo "Memory Usage: "
  free -h | grep -v + | awk '/Mem/{printf "used: %s%s (%.2f%%)\n", $3,$2,$3*100/$2 }'
}

echo "=================================================="
display_memory_usage
echo "=================================================="