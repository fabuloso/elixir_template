#!/usr/bin/env bash

source /setup_common.sh

if [ "$1" == "mix" ]; then
  exec "$@"
elif [ -n "$1" ]; then
  sh -c "$@"
else
  mix deps.get
  mix ecto.reset
  mix phx.server
fi