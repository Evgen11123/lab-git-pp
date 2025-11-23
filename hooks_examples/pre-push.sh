#!/bin/sh

echo "pre-push hook: running tests before push..."

# Запускаем наш скрипт тестов
if ! ./run_tests.sh; then
  echo "pre-push: tests failed, push is aborted."
  exit 1
fi

echo "pre-push: tests passed, push allowed."
exit 0
