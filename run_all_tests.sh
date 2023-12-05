#!env bash

for test_case in {01..16}; do
  python ok -q $test_case -v
done
