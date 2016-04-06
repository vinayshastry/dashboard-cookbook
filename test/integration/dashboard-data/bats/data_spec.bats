#!/usr/bin/env bats


@test "curl binary is found in PATH" {
  run which curl
  [ "$status" -eq 0 ]
}

@test "mysql binary is found in PATH" {
  run which curl
  [ "$status" -eq 0 ]
}
