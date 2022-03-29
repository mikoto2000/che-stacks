#!/bin/bash

set -e

USER_ID=$(id -u)
GROUP_ID=$(id -g)
export USER_ID
export GROUP_ID

if ! whoami >/dev/null 2>&1; then
    echo "${USER_NAME:-node}:x:${USER_ID}:0:${USER_NAME:-node} node:${HOME}:/bin/bash" >> /etc/passwd
fi

# Grant access to projects volume in case of non root user with sudo rights
if [ "${USER_ID}" -ne 0 ] && command -v sudo >/dev/null 2>&1 && sudo -n true > /dev/null 2>&1; then
    sudo chown "${USER_ID}:${GROUP_ID}" /projects
fi

mkdir ~/.vnc
echo $VNC_PASSWORD | vncpasswd -f > ~/.vnc/passwd
chmod 0600 ~/.vnc/passwd
tigervncserver :1
websockify --web=/usr/share/novnc/ 6080 localhost:5901 &

exec "$@"

