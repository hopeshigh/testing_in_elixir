# Fear of Testing: Chapter 1

## Description

This repo is an accompaniment to the blog found at: [Feat of Testing in Elixir: Chapter 1]()

We will start off with a very simple example, build upon it and get comfortable
using different assertions.

Throughout we will be using [ExUnit](https://hexdocs.pm/ex_unit/ExUnit.html).
This is the in-built testing library and it is great and can be extended easily.

We will be using the `test.sh` to run our application, this will run [credo](https://github.com/rrrene/credo)
on our application in strict mode and then run [ex-coveralls](https://github.com/parroty/excoveralls) for a 
breakdown of our test coverage.

## Installation

Before using run the following command:

`mix deps.get && mix deps.compile`

Then run the following to make our test script executable:

`chmod +x ./test.sh`


## ToDo:
- [x] Basic assertion test
- [ ] Basic doc test
- [ ] Basic test with types @spec
- [ ] Alternative assertion tests (refute, assert_raise, assert_receive, refute_receive)
