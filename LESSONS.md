# Creating my first project

Use `Cabal`. It is similar to Rust's `cargo`

```bash
cabal init -n --is-executable
```
>> [!NOTE]
> `-n` skips the interactive questionnaire and just uses sensible defaults, while `--is-executable` tells Cabal we want to build a runnable program, not a library.

If you look at the generated files, you'll see a structure very similar to Rust:

`hello-haskell.cabal`: This is your Cargo.toml. It defines your project metadata, dependencies, and build targets.

`app/Main.hs`: This is your src/main.rs. It contains the entry point to your program.
