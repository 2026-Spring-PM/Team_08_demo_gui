#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"
IMAGE_NAME="pleaze1234/team08-farm-village-simulator:0.1.0"
CONTAINER_NAME="farm-sim-team08"

if ! docker image inspect "$IMAGE_NAME" > /dev/null 2>&1; then
    echo "Pulling Docker image..."
    docker pull --platform linux/amd64 "$IMAGE_NAME"
fi

docker rm -f "$CONTAINER_NAME" 2>/dev/null || true

echo "Starting game... open http://localhost:6080/vnc.html in your browser"

MSYS_NO_PATHCONV=1 docker run -it --rm \
    --platform linux/amd64 \
    -p 6080:6080 \
    -v "$ROOT_DIR":/workspace \
    --name "$CONTAINER_NAME" \
    "$IMAGE_NAME" \
    bash /workspace/scripts/docker_start.sh
