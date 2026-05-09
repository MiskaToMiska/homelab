#!/bin/bash
sudo sysctl -p

podman start --all
podman stop minecraft
