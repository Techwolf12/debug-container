# debug-container

Debug docker container that has a few tools for k8s debugging:

- `/tools/pid2pod <pid>` - Find pod that has PID on node debug
- `/tools/inotify-consumers` - Get inotify consumers.
- `iperf` - Network performance testing
- `ab` - Apache Benchmark for load testing
- `google-cloud-cli` - CLI for talking with GCloud
- `speedtest-cli` - Speedtest CLI for testing network speed

Of course there are some default things like curl included. Feel free to open a issue if you want a tool in here.

# Node debug
```
kubectl debug -it node/NODE_NAME --image=ghcr.io/techwolf12/debug-container:v1.4
```

# Just as a quick run
```
kubectl run techwolf12-debug --rm --restart=Never -it --image=ghcr.io/techwolf12/debug-container:v1.4 -- /bin/bash
```
