# SSH Tunnel

Create a SSH Tunnel:

* forwarding remote network traffic to local machine.
* or forwarding local network traffic to remote server.

[![Build & Publish](https://github.com/aguang-xyz/ssh-tunnel/actions/workflows/publish.yml/badge.svg)](https://github.com/aguang-xyz/ssh-tunnel/actions/workflows/publish.yml)

## Usage

### Remote Port Forwarding

```bash
docker run -d \
	--net=host \
	--name ssh-tunnel \
	-e MODE=forward_remote_port \
	-e REMOTE_PORT=80 \
	-e REMOTE_HOST=example.com \
	-e LOCAL_PORT=8080 \
	-v ~/.ssh/:/root/.ssh/ \
	ghcr.io/aguang-xyz/ssh-tunnel:v1.0.1
```

### Local Port Forwarding

```bash
docker run -d \
	--name ssh-tunnel \
	-p 8080:8080 \
	-e MODE=forward_local_port \
	-e REMOTE_PORT=80 \
	-e REMOTE_HOST=example.com \
	-e LOCAL_PORT=8080 \
	-v ~/.ssh/:/root/.ssh/ \
	ghcr.io/aguang-xyz/ssh-tunnel:v1.0.1
```
