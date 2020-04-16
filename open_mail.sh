#!/bin/bash

fn="$1"
message_id=$(grep -A1 -i message-id "${fn}" | \
                 tr '\n' '   ' | \
                 sed -n 's/.*message-id:\s*<\([^ ]*\)>.*/\1/Ip' | \
                 head)

if [ ! -z "${message_id}" ]
then
    emacsclient -t -c --eval '(notmuch-show "id:'"${message_id}"'")'
else
    echo "Could not get message id..."
    echo "file = ${fn}"
    echo "Opening message itself. press enter"
    read
    emacsclient -t "${fn}"
fi
