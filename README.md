# Haskell List Interpreter

A simple interpreter for a custom expression language, implemented in **Haskell**, with support for arithmetic operations, boolean logic, conditional expressions, and list manipulation.

The project explores fundamental concepts of **programming language implementation**, including lexical analysis, parsing, static type checking, and expression evaluation.

## Features

### Basic Expressions
- Arithmetic operations: `+`, `-`, `*`
- Comparison operators: `==`, `>=`
- Boolean operations: `and`, `or`, `not`
- Conditional expressions: `if ... then ... else`
- Minimum and maximum: `min`, `max`

### List Operations

The language supports lists of integers and booleans, with the following operations:

| Operation | Description |
|---|---|
| `head list` | Returns the first element |
| `tail list` | Returns the list without its first element |
| `isnil list` | Checks whether the list is empty |
| `sumlist list` | Returns the sum of all elements |
| `multlist list` | Returns the product of all elements |
| `listmin list` | Returns the smallest element |
| `listmax list` | Returns the largest element |
| `get i list` | Returns the element at index `i` (0-based) |
| `list1 ++ list2` | Concatenates two lists |
| `x : list` | Prepends an element to a list |

## Example Expressions

```text
if 3 >= 2 then 2 - 1 else 4 * 5

if not true or false then max 7 8 else min 6 4

[1, 2, 3, 4, 5]

9 * 3 : [5, 6, 7]

sumlist [5, 5, 10 * 7]

multlist [2 - 1, min 11 10, max 3 4]

listmin [10, 9, 8, 7]

get 5 [1, 2, 3] ++ [10, 20, 30]
```

## Project Structure

- **`Lexer.hs`** — Token definitions, expression types, and lexical analysis.
- **`Parser.y`** — Grammar specification using Happy.
- **`Parser.hs`** — Generated parser.
- **`TypeChecker.hs`** — Static type checking for expressions.
- **`Interpreter.hs`** — Expression evaluation and operational semantics.
- **`Main.hs`** — Entry point connecting the interpreter components.
- **`input.lg`** — Sample expression used as input.

## Running Locally

**Requirements:** GHC (Glasgow Haskell Compiler).

Compile the interpreter:

```bash
ghc Main.hs -o interpreter
```

Run it using the provided input file:

```bash
./interpreter < input.lg
```

Alternatively, execute it directly with:

```bash
runghc Main.hs < input.lg
```

The interpreter reads an expression from standard input, checks its type, evaluates it, and prints the resulting expression.