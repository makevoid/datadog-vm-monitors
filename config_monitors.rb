MONITORS = {
  load_avg: {
    name: "Load average",
    message: "VM load average is greater than the number of available cores",
    monitor: "avg(last_15m):avg:system.load.15{host:%s} > 3",
  },
  disk_space: {
    name: "Disk space",
    message: "Disk space available is less than 10%",
    monitor: "max(last_5m):avg:system.disk.in_use{host:%s} >= 0.9",
  },
  cpu: {
    name: "CPU usage",
    message: "CPU usage is high",
    monitor: "avg(last_15m):max:system.cpu.user{host:%s} + max:system.cpu.system{host:%s} > 95",
  },
  ram: {
    name: "RAM usage",
    message: "Memory (RAM) is almost full",
    monitor: "avg(last_30m):max:system.mem.pct_usable{host:%s} < 0.05",
  },
}
