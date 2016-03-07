#!/bin/sh

while ! nc -q 1 $@ < /dev/null > /dev/null 2>&1; do
  sleep 1
  echo -n "..."
done

echo ""
