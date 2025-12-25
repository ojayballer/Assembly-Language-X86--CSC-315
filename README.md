# x86 Assembly Language (CSC 315)

This repository contains implementation scripts and exercises for the **CSC 315** course (Assembly Language Architecture).

The codebase demonstrates low-level memory management, register manipulation, and control flow using **MASM** and the **Irvine32** library.

## Prerequisites
* **Visual Studio** (C++ Desktop workload required)
* **MASM** (Microsoft Macro Assembler)
* **Irvine32 Library** (Required for `ReadInt`, `WriteString`, etc.)

## Code Index

### Memory & Addressing
* **`array_reverse.asm`**: Implements an in-place array reversal algorithm. Demonstrates **indirect addressing** (`[ESI]`), pointer arithmetic, and the interaction between the Runtime Stack (`ESP`) and data pointers.
* **`stack_test.asm`**: specific verification of the **LIFO** (Last-In, First-Out) property of the stack using simple integer push/pop operations across different general-purpose registers.

### Control Flow & Procedures
* **`sum_proc.asm`**: Demonstrates modular code design by offloading logic to a custom procedure (`SumThree`). Focuses on `CALL`/`RET` instruction flow and maintaining register values across calls.
* **`sum_inline.asm`**: Sequential execution implementation of integer addition. distinct from `sum_proc.asm` as it demonstrates logic flow strictly within the `main` procedure without stack overhead.

### Basic Input/Output
* **`input_demo.asm`**: Interface setup using the Irvine32 library to handle standard input (stdin) and output (stdout) for signed 32-bit integers.

## Usage
1.  Configure project dependencies for `Irvine32.inc` and `Irvine32.lib`.
2.  Add the target `.asm` file to the Source Files directory.
3.  Build and Run.
