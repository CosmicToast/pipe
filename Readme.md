# Pipe #

[![license]](License.md)

A pipe operator for nim, as seen in functional languages.

## Origins ##

I was looking for a good old `|>` to use in nim.
I found [this](https://github.com/jaym/nim-pipeline).
It sucked. It wasn't published. It used "example" in its description.

So I decided to write my own, with blackjack and hookers.

## Examples ##

Please take a look in tests/test.nim for examples, but here's a tl;dr:

```nim
1 |> `+`(2) |> foo
# is equivalent to
foo(1+2)
```

[license]: https://img.shields.io/github/license/5pacetoast/pipe.svg
