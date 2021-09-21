#!/bin/bash
set -e

forward_remote_port() {
	echo "Forwarding traffic from ${REMOTE_HOST}:${REMOTE_PORT} to localhost:${LOCAL_PORT}"
	ssh -o ServerAliveInterval=60 -R "0.0.0.0:${REMOTE_PORT}:0.0.0.0:${LOCAL_PORT}" -N ${REMOTE_USER}@${REMOTE_HOST}
}

forward_local_port() {
	echo "Forwarding traffic from localhost:${LOCAL_PORT} to ${REMOTE_HOST}:${REMOTE_PORT}"
	ssh -o ServerAliveInterval=60 -L "0.0.0.0:${LOCAL_PORT}:0.0.0.0:${REMOTE_PORT}" -N ${REMOTE_USER}@${REMOTE_HOST}
}

if [ "$MODE" == "forward_remote_port" ]; then
	forward_remote_port
elif [ "$MODE" == "forward_local_port" ]; then
	forward_local_port
else
	echo "Unsupported mode: $MODE"
fi