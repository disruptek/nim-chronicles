mode = ScriptMode.Verbose

packageName   = "chronicles"
version       = "0.7.0"
author        = "Status Research & Development GmbH"
description   = "A crafty implementation of structured logging for Nim"
license       = "Apache License 2.0"
skipDirs      = @["tests"]

requires "nim >= 0.18.1"
requires "json_serialization"
requires "https://github.com/status-im/testutils < 2.0.0"

task test, "run CPU tests":
  when defined(windows):
    exec "cmd.exe /C testrunner.cmd tests"
  else:
    exec "testrunner tests"
