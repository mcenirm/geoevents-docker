#!/bin/bash

top=$(cd $(dirname "$0") && /bin/pwd)
cache=${top}/cache
reqs=${top}/geoevents/geoevents/requirements.txt
dockerfile=${top}/Dockerfile

[[ -d "$cache" ]] || mkdir -p "$cache" || exit $?

for req in $(< "$reqs") ; do
  pip install --download "$cache" "$req" || exit $?
done
