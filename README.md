# Dular SSH Tunnel

Create a SSH Tunnel forwarding remote network traffic to local machine.

[![Build & Publish](https://github.com/dular-xyz/dular-ssh-tunnel/actions/workflows/publish.yml/badge.svg)](https://github.com/dular-xyz/dular-ssh-tunnel/actions/workflows/publish.yml)

## Usage

```bash
docker run -d \
	--net=host \
	--name dular-ssh-tunnel \
	-e REMOTE_PORT=8080 \
	-e REMOTE_HOST=example.com \
	-e LOCAL_PORT=8080 \
	-v ~/.ssh/:/root/.ssh/ \
	dular-ssh-tunnel:latest
```
