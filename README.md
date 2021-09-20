# SSH Tunnel

Create a SSH Tunnel forwarding remote network traffic to local machine.

[![Build & Publish](https://github.com/aguang-xyz/ssh-tunnel/actions/workflows/publish.yml/badge.svg)](https://github.com/aguang-xyz/ssh-tunnel/actions/workflows/publish.yml)

## Usage

```bash
docker run -d \
	--net=host \
	--name ssh-tunnel \
	-e REMOTE_PORT=8080 \
	-e REMOTE_HOST=example.com \
	-e LOCAL_PORT=8080 \
	-v ~/.ssh/:/root/.ssh/ \
	ghcr.io/aguang-xyz/ssh-tunnel:v1.0.0
```
