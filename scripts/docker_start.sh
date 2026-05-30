#!/bin/bash
# This script runs INSIDE the Docker container to start VNC and the game.

# 1. Start virtual display
Xvfb :1 -screen 0 1280x720x24 -ac &

# 2. Wait until Xvfb is ready before starting VNC
sleep 2

# 3. Start window manager so the game window is placed correctly
DISPLAY=:1 openbox &

# 4. Start VNC server pointing at display :1
x11vnc -display :1 -nopw -forever -shared -quiet &

# 5. Start noVNC WebSocket proxy on port 6080
websockify --web /usr/share/novnc 6080 localhost:5900 &

sleep 0.5

# 6. Run the game
DISPLAY=:1 exec /workspace/build/main
