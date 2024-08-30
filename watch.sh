#!/bin/bash

while true; do
  if ! curl -sfL https://x.com >/dev/null 2>&1; then
    echo gh pr merge -r 2
    break
  fi
  echo "$(date) - x.com still up"
  sleep 120
done

echo "$(date) - x.com is now down"
