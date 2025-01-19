#!/bin/bash
#
# This script analysis basic server performance

# Total CPU usage
top -bn1 | grep "%Cpu(s):" | cut -d ',' -f 4 | awk '{print "Total CPU usage: " 100-$1 "%"}'
echo

# Total memory usage (Free vs Used including percentage)
free | grep "Mem:" | awk '{print "Total memory usage: " ($3/$2)*100 "%"}'
echo

# Total disk usage (Free vs Used including percentage)
df --total | grep "total" | awk '{print "Total disk usage: " $5}'
echo

# Top 5 processes by CPU usage
echo 'Top 5 processes by CPU usage:'
# ps
echo

# Top 5 processes by memory usage
echo 'Top 5 processes by memory usage:'
# ps
echo
