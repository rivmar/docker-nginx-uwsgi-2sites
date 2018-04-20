#!/bin/bash

# Start uwsgi processes
echo Starting uwsgi.
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace

python /app1/manage.py migrate

# Start uwsgi processes

echo Starting uwsgi.

uwsgi --ini /etc/uwsgi/uwsgi.ini