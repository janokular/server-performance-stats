#!/bin/bash
#
# This script analysis basic server performance

# Total CPU usage
top -bn1 | grep "%Cpu(s):" | cut -d ',' -f 4 | awk '{print "Total CPU usage: " 100-$1 "%"}'
echo

# Total memory usage (Free vs Used including percentage)
echo 'Total memory usage:'
# free
echo

# Total disk usage (Free vs Used including percentage)
echo 'Total disk usage:'
# df
echo

# Top 5 processes by CPU usage
echo 'Top 5 processes by CPU usage:'
# ps
echo

# Top 5 processes by memory usage
echo 'Top 5 processes by memory usage:'
# ps
echo
