#!env bash

for test_case in {01..16}; do
  python ok --local -q $test_case
done
python ok --local -q eval_apply
python ok --local -q tests.scm