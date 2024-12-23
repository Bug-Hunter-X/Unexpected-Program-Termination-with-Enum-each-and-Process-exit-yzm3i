# Elixir Bug: Unexpected Program Termination with Enum.each and Process.exit

This repository demonstrates a subtle bug in Elixir related to using `Process.exit` within an `Enum.each` function.  The code appears simple, but it will unexpectedly terminate before processing the entire list.

## Bug Description

The `bug.ex` file contains Elixir code that iterates over a list of numbers.  If the number 3 is encountered, `Process.exit(self(), :normal)` terminates the current process.  This will prematurely halt the `Enum.each` function, preventing the remaining elements of the list from being processed.

## Solution

The solution, found in `bugSolution.ex`, demonstrates a better approach. It uses `Enum.each` and `try/catch` to handle potential exit signals. Thus, the process will terminate gracefully without stopping the loop.   This is a more robust and predictable way to handle exceptions or process exits within enumerations.

## How to Reproduce

1. Clone this repository.
2. Ensure you have Elixir installed.
3. Run `elixir bug.ex` and `elixir bugSolution.ex`. Note the differences in output.
