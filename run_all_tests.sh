#!/usr/bin/env bash

# iterate over all test cases from 01 to 16
for test_case in {01..16}; do
  # run ok on each test case number
  # --local means run ok locally w/o submitting to okpy.org
  # -q is option to pick the test case (01, 02, etc. or eval_apply)
  python ok --local -q $test_case
done
python ok --local -q eval_apply

# run ok on the scheme tests.scm
# a scheme test is a test that is written in scheme
python ok --local -q tests.scm