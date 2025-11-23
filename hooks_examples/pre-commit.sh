#!/bin/sh

# pre-commit: запрещаем коммит, если в индексируемых изменениях есть слово TO-DO
if git diff --cached | grep -q "TO-DO"; then
  echo "ERROR: Commit blocked. Found TO-DO in staged changes."
  exit 1
fi

exit 0
