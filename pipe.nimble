# Package

version       = "0.1.0"
author        = "Chloe Kudryavtsev"
description   = "Pipe operator for nim."
license       = "MIT"

# Base

skipDirs = @["tests"]

task clean, "Clean various files":
    rmDir "tests/nimcache"
    rmDir "nimcache"
    rmfile "pipe"
    rmfile "tests/test"

# Dependencies

requires "nim >= 0.17.0"

# Tests

task test, "Runs the test suite":
  exec "nim c -r tests/test"
