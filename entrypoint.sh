#!/bin/bash
set -e

ssh -R "0.0.0.0:${REMOTE_PORT}:localhost:${LOCAL_PORT}" -N ${REMOTE_USER}@${REMOTE_HOST}