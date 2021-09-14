#!/bin/bash
set -e

ssh -o ServerAliveInterval=60 -R "0.0.0.0:${REMOTE_PORT}:localhost:${LOCAL_PORT}" -N ${REMOTE_USER}@${REMOTE_HOST}