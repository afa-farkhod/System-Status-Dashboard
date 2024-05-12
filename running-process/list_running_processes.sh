#!/bin/bash

# function to list running processes
list_running_processes(){
  echo "Top processes by CPU usage: "
  ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head
}

echo "=================================================="
list_running_processes
echo "=================================================="