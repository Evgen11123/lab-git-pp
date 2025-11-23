#!/bin/sh

# commit-msg: запрещаем пустые сообщения коммита

MSG_FILE="$1"

if [ ! -s "$MSG_FILE" ]; then
  echo "ERROR: Commit message is empty. Commit aborted."
  exit 1
fi

exit 0
