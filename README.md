# debug-container

Debug docker container that has a few tools for k8s debugging:

`/tools/pid2pod <pid>` - Find pod that has PID on node debug  
`/tools/inotify-consumers` - Get inotify consumers.  
`iperf` - Network performance testing  
`google-cloud-cli` - CLI for talking with GCloud  

# Node debug
```
kubectl debug -it node/NODE_NAME --image=ghcr.io/techwolf12/debug-container:LATEST_VERSION
```

# Just as a quick run
```
kubectl run techwolf12-debug --rm --restart=Never -it --image=ghcr.io/techwolf12/debug-container:LATEST_VERSION -- /bin/bash
```
