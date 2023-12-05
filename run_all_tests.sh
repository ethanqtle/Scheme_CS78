#!env bash

for test_case in {01..16}; do
  python ok -q $test_case
done
python ok -q eval_apply
python ok -q tests.scm