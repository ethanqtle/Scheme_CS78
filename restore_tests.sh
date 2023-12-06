#!/usr/bin/env bash
function my_cmd()
{
  test_case=$1
  echo "Restoring test case tests/${test_case}.py"
  cp tests.locked/${test_case}.py tests/${test_case}.py
}
for test_case in {01..16}; do
  my_cmd $test_case
done

my_cmd eval_apply
