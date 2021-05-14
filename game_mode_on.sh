#!/bin/bash
pkexec echo 8 >/sys/devices/system/cpu/intel_pstate/min_perf_pct
echo $?
  if [ $? -eq 0 ]; then
   notify-send 'Success' 'Game mode ON'
else
   notify-send 'Failed' 'Game mode failed to exec'
fi
