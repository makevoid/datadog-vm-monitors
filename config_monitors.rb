MONITORS = {
  load_avg: {
    name: "Load average",
    message: "VM load average is greater than the number of available cores",
    monitor: "avg(last_15m):avg:system.load.15{host:%s} > 3",
  },
  disk_space: {
    name: "Disk space",
    message: "Disk space available  load average is greater than the number of available cores",
    monitor: "max(last_5m):avg:system.disk.in_use{host:%s} >= 0.9",
  },
}
