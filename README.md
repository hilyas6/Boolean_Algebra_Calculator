# Boolean Algebra Calculator

This project implements a **Boolean Algebra Calculator** using **Flex** and **Bison**. The calculator converts Boolean expressions into post-fix notation and evaluates them. It supports various input formats and Boolean operations such as AND (`&`), OR (`|`), and NOT (`!`).

## Features

- **Input Handling**:
  - Accepts `TRUE` and `FALSE` in multiple cases (e.g., `True`, `true`, `tRuE`, etc.).
  - Supports `1` for `TRUE` and `0` for `FALSE`.
- **Boolean Operators**:
  - `&` for AND
  - `|` for OR
  - `!` for NOT
- **Error Detection**: Displays generic error messages for invalid inputs.
- **Post-Fix Evaluation**: Handles complex Boolean expressions in post-fix notation.
- **Output**: Displays results in uppercase as `TRUE` or `FALSE`.

## Language Used

- **C**: The underlying code and logic are written in C for parsing and evaluation.
- **Flex**: For lexical analysis of input.
- **Bison**: For syntax parsing and generating the evaluator.

## Example Usage

INPUT: TRUE FALSE & OUTPUT: FALSE

INPUT: true 0 | OUTPUT: TRUE

INPUT: 1! OUTPUT: FALSE

INPUT: tRuE FaLsE & ! fAlSe | OUTPUT: TRUE

markdown
Copy code

## Requirements

- **Tools Needed**:
  - `flex`: For lexical analysis.
  - `bison`: For syntax parsing and evaluator generation.
  - `gcc`: For compiling the generated C code.
- **Commands to Compile and Run**:
  ```bash
  bison -d boolcalc.y
  flex boolcalc.l
  gcc -lm boolcalc.tab.c lex.yy.c -o boolcalc
  ./boolcalc
  ```

## How to Set Up

1. **Clone the repository:**
   ```bash
   git clone https://github.com/hilyas6/Boolean_Algebra_Calculator.git
   cd boolean-algebra-calculator
   ```
2. **Compile the project:** using the commands provided in the Requirements section.

3. **Run the calculator:**
   ```bash
   ./boolcalc
   ```
4. Input Boolean expressions and press Enter to see the results.
5. Use CTRL+D to exit the program.

## File Descriptions

**boolcalc.l :**
The Flex file responsible for lexical analysis of the input. It tokenizes inputs such as TRUE, FALSE, &, |, and !.

**boolcalc.y :**
The Bison file responsible for parsing and evaluating expressions. Implements post-fix notation evaluation.

**README.md :**
This documentation file, providing a comprehensive overview of the project.
requirements.txt: List of tools and dependencies needed to compile and run the project.

## Author

- Hanzla Ilyas
