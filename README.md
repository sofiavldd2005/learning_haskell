# Learning Haskell :)

## About This Repository
About me: I am an aerospace engineer with a background in embedded programming using C and Rust. I created this repository to document my journey learning **Haskell**. 

My goal is to learn more about functional programming paradigm. While C and Rust have taught me the basics, Haskell forces a complete mental shift: immutable data, lazy evaluation, and pure functions strictly separated from side effects. Learning Haskell is a way to rewire my brain, be more comfortable with functional programming features in Rust and overall just become a better programmer.

## Repository Structure
This project is managed by `cabal` and follows the standard Haskell project structure:
* `app/Main.hs`: The entry point and "impure" boundary of the application (handles `IO`).
* `src/`: The purely functional library code, separated into modules (e.g., `Sensors.hs`).

## Roadmap & Learning Topics

### Phase 1: The Basics
- [x] **Toolchain Setup**: `ghcup`, GHC, Cabal, and HLS.
- [x] **The Pure/Impure Boundary**: Understanding `IO` vs. pure functions.
- [x] **Algebraic Data Types (ADTs)**: Product types (structs) and Sum types (enums).
- [x] **Pattern Matching**: Destructuring data safely and exhaustively.

### Phase 2: Functional Core
- [ ] **Error Handling without Exceptions**: Mastering `Maybe` and `Either` (the Haskell equivalents of Rust's `Option` and `Result`).
- [ ] **Recursion & Lists**: Throwing away `for` loops.
- [ ] **Higher-Order Functions**: `map`, `filter`, and `fold` (the functional workhorses).

### Phase 3: Advanced Abstractions
- [ ] **Typeclasses**: Haskell's version of Rust traits/interfaces (e.g., `Show`, `Eq`, `Num`).
- [ ] **Currying & Partial Application**: Functions returning functions.
- [ ] **Lazy Evaluation**: Infinite lists and deferring computation.

### Phase 4: Systems & Scale
- [ ] **Functors, Applicatives, and Monads**: A practical approach to chaining operations (it's just a design pattern!).
- [ ] **Software Transactional Memory (STM)**: Fearless concurrency (highly relevant for robust system design).
- [ ] **Foreign Function Interface (FFI)**: Calling embedded C code directly from Haskell!

## How to Build and Run
Make sure you have [GHCup](https://get-ghcup.haskell.org/) installed, which provides GHC and Cabal.

```bash
# Run the executable
cabal run
