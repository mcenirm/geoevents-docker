#!/bin/bash

top=$(cd $(dirname "$0") && /bin/pwd)
cache=${top}/cache
geoevents=${top}/geoevents
reqs=${geoevents}/geoevents/requirements.txt
dockerfile=${top}/Dockerfile

[[ -d "$cache" ]] || mkdir -p "$cache" || exit $?

docker run --rm -it \
    -v "$cache":/tmp/cache \
    -v "$geoevents":/tmp/geoevents \
    $(sed -n -e 's/^FROM //p' "$dockerfile") \
    pip install --download /tmp/cache -r /tmp/geoevents/geoevents/requirements.txt
