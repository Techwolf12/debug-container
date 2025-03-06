# debug-container
[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/techwolf12-debug-container)](https://artifacthub.io/packages/search?repo=techwolf12-debug-container)

Debug docker container that has a few tools for k8s debugging.  
Feel free to open a issue if you want a tool in here.

## Node specific
- `/tools/pid2pod <pid>` - Find pod that has PID on node debug
- `/tools/inotify-consumers` - Get inotify consumers.
- `ps` - To check processes on the node.

## Generic
- `iperf` - Network performance testing
- `ab` - Apache Benchmark for load testing
- `google-cloud-cli` - CLI for talking with GCloud
- `speedtest-cli` - Speedtest CLI for testing network speed
- `curl` - The must have for any debug container, making random network requests inside your container
- `/tools/grpc-client-cli` - For making GRPC requests

# Debugging a specfic node
```
kubectl debug -it node/NODE_NAME --image-pull-policy=Always --image=ghcr.io/techwolf12/debug-container:latest
```

# Just as a quick run
```
kubectl run techwolf12-debug --rm --restart=Never --image-pull-policy=Always -it --image=ghcr.io/techwolf12/debug-container:latest -- /bin/bash
```
