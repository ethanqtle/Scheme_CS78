#!/usr/bin/env bash
function my_cmd()
{
  # $1 is the test case number
  # the actual test files are in tests.locked/${test_case}.py
  # and the test files that are run are in tests/${test_case}.py
  # so test_case is the base name of the test file
  test_case=$1
  echo "Restoring test case tests/${test_case}.py"
  cp tests.locked/${test_case}.py tests/${test_case}.py
}

# iterate over all test cases from 01 to 16
for test_case in {01..16}; do
  # run my_cmd function on each test case number
  my_cmd $test_case
done

# restore eval_apply test case
my_cmd eval_apply
