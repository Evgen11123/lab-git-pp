#!/bin/sh

echo "Running simple tests..."

if grep -q "Лабораторная" README.md; then
  echo "Tests passed: README.md contains 'Лабораторная'."
  exit 0
else
  echo "Tests FAILED: README.md does not contain 'Лабораторная'."
  exit 1
fi
