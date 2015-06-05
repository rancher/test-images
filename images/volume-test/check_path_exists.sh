#!/bin/sh

trap "done=true" SIGTERM

while [ "$done" != true ]; do
    echo >/dev/null
done

echo "Checking path: $TEST_PATH"
if [ -d "$TEST_PATH" ]; then
    exit 10
else
    exit 11
fi
