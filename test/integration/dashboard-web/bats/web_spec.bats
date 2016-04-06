#!/usr/bin/env bats

@test "git binary is found in PATH" {
  run which git
  [ "$status" -eq 0 ]
}

@test "curl binary is found in PATH" {
  run which curl
  [ "$status" -eq 0 ]
}


@test "nginx binary is found in PATH" {
  run which nginx
  [ "$status" -eq 0 ]
}
