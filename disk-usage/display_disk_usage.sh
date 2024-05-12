#!/bin/bash

# function to display disk usage
display_disk_usage() {
  echo "Disk Usage: "
  df -h | awk '$NF=="/"{printf "Partition: %s, Used: %s, Available: %s, Use%%: %s\n", $1, $3, $4, $5}'
}

echo "=================================================="
display_disk_usage
echo "=================================================="