# Testing in Elixir: Chapter 1

## Description

This repo is an accompaniment to the blog found at: 
[Testing in Elixir: Chapter 1, Part 1](https://medium.com/@hoodsuphopeshigh/testing-in-elixir-chapter-1-introduction-c263c31a3de8)
[Testing in Elixir: Chapter 1, Part 2](https://medium.com/@hoodsuphopeshigh/testing-in-elixir-chapter-1-introduction-e724a15d2f3)

We will start off with a very simple example.

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
