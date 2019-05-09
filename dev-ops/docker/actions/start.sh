#!/usr/bin/env bash


# check that the ~/.npm and ~/.composer folder are not owned by the root user
dev-ops/docker/scripts/check_permissions.sh

docker volume create shopware_projectdata

docker-compose build && docker-compose up -d

