import pipe

import unittest

suite "Pipe operator sanity":
  test "Simple calls are equivalent":
    proc add2(x: int): int = x + 2
    check(add2(2) == 2 |> add2)

  test "Infix operators work":
    check(1 + 2 == 1 |> `+` 2)

  test "Chaining works":
    check(1 + 2 + 3 == 1 |> `+`(2) |> `+`(3))

  test "Many parameters work":
    proc sum3(x, y, z: int): int = x + y + z
    check(sum3(1,2,3) == 1 |> sum3(2,3))

  test "Varargs work":
    proc sum(stuff: varargs[int]): int =
      result = 0
      for s in stuff:
        result += s

    check(sum(1,2,3) == 1 |> sum(2, 3))

  test "Variables can't be called":
    const x = 5
    when compiles(5 |> x): fail()
