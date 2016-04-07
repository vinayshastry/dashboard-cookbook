#!/usr/bin/env bats


@test "RVM binary is found in PATH" {
  run which rvm
  [ "$status" -eq 0 ]
}

@test "Ruby binary is found in PATH" {
  run which ruby
  [ "$status" -eq 0 ]
}


@test "Rails binary is found in PATH" {
  run which rails
  [ "$status" -eq 0 ]
}
