# HiSoft Pascal 4T v1.7M Compatibility Port for the ZX Spectrum

## Python-hosted Pascal-to-Z80 compiler

This Python-hosted compiler turns supported HiSoft Pascal 4T v1.7M programs into Z80 code for the Sinclair ZX Spectrum. In all 145 included positive tests, its unoptimized output matches saved results from the original compiler byte for byte. It can also save assembly, optimize the generated code, and make Spectrum TAP files.

This is a sister project of [ZX-UX: UNIX Operating System for Sinclair ZX Spectrum 48K](https://github.com/tuklusan/ZX-UX-The-ZX-Spectrum-48K-Unix-Project). The port forms the basis of the ZX-UX SDK's `rpc` Pascal compiler.

The package includes the compiler source, test programs, and saved results. It does **not** include HiSoft-owned software, the original HiSoft tape or TZX image, tape-derived proprietary files, or a ZX Spectrum ROM. Get any other required files from lawful sources and follow their terms.

## 1. Install

Clone or download the complete repository. Keep `src/` and `test/` together. We recommend Python 3.10 or newer.

The compiler, Z80 assembler, and `upeepz80` optimizer are included under `src/`. No extra Python packages are needed. Run the commands below from the repository root. If your system calls Python 3 `python3`, use that instead of `python`.

## 2. Compile a Pascal program

Compile a Pascal source file to a flat Z80 binary:

```sh
python src/hp4t.py SOURCE.pas -o OUTPUT.bin
```

Try an included example and save its assembly:

```sh
mkdir out
python src/hp4t.py test/src/positive/literal_001/input.pas -o out/literal_001.bin --asm out/literal_001.asm
```

The command format is:

```text
python src/hp4t.py SOURCE -o OUTPUT [--asm ASM] [--optimize] [--tap]
```

Run `python src/hp4t.py --help` for the command options.

## 3. Choose your output

The `-o` option sets the output filename. The other flags decide what goes in it:

- **Default:** Writes a flat, unoptimized Z80 binary, such as `OUTPUT.bin`.
- **`--asm ASM`:** Saves SJASMPlus-compatible assembly for the program. Without `--optimize`, assembling that source reproduces the flat binary.
- **`--optimize`:** Runs the bundled `upeepz80` optimizer on generated assembly, then assembles the result. The output may differ from the original HiSoft bytes.
- **`--tap`:** Writes a Spectrum TAP image instead of a flat binary. Use a `.tap` filename with `-o`.

To save optimized code and the assembly used to build it:

```sh
python src/hp4t.py test/src/positive/literal_001/input.pas -o out/literal_001-optimized.bin --asm out/literal_001-optimized.asm --optimize
```

To create a TAP file for cassette loading:

```sh
python src/hp4t.py test/src/positive/literal_001/input.pas -o out/literal_001.tap --tap
```

If you combine `--asm` and `--tap`, the assembly describes the compiled program, not the TAP header. With `--optimize`, the compiler saves the assembly only when you also supply `--asm`.

## 4. Check the included tests

The repository includes **215 Pascal source programs**:

- **145 positive tests** under `test/src/positive/`.
- **70 negative or exploratory tests** under `test/src/negative/`.

Each test is named `input.pas`. Its saved output is in the matching results folder:

```text
test/
  src/
    positive/<case>/input.pas
    negative/<case>/input.pas
  results/
    positive/<case>/
    negative/<case>/
```

A typical positive test has these files:

```text
expected.bin             Output saved from the original compiler
expected.bin.sha         SHA-256 hash of expected.bin
port.bin                 Output from the Python port
port.bin.sha             SHA-256 hash of port.bin
port.asm                 Assembly for port.bin
port-optimized.bin       Binary made from optimized assembly
port-optimized.asm       Assembly for port-optimized.bin
```

All 145 checked-in positive tests have matching `expected.bin` and `port.bin` files, byte for byte. Their saved SHA-256 hashes also match. The optimized binary is a separate result and need not match the original compiler's bytes.

Of the 70 negative tests, 50 have matching saved error results (`expected_err.bin` and `port.err`). The other 20 are exploratory and have no saved original error to compare. A failed program without a reference error cannot show an exact error match.

Build the `literal_001` example from Section 2. Then compare its output with the saved original. On Windows PowerShell:

```powershell
Get-FileHash test\results\positive\literal_001\expected.bin -Algorithm SHA256
Get-FileHash out\literal_001.bin -Algorithm SHA256
```

On Linux:

```sh
sha256sum test/results/positive/literal_001/expected.bin out/literal_001.bin
```

On macOS:

```sh
shasum -a 256 test/results/positive/literal_001/expected.bin out/literal_001.bin
```

The two hashes should agree. The checked-in `literal_001` files do match.

## 5. Know the compatibility limits

We compare the Python port with saved HiSoft results for each tested program:

```text
R(s) ≡ P(s)
```

Here, `R(s)` means the saved original result for program `s`; `P(s)` means the port's result. For positive tests, the compiled bytes must match. For negative tests with a saved original error, the error results must match.

We aim to reproduce **HiSoft Pascal 4T v1.7M** within these tests, quirks included. We do not claim to fix old bugs, add Pascal features, or handle every program beyond the included tests. The compiler may be old; the byte comparison has no sense of nostalgia.

## 6. Troubleshoot

### `No module named pascal_compiler`

Keep `hp4t.py` beside the `pascal_compiler/` and `upeepz80/` folders under `src/`. Run `python src/hp4t.py ...` from the repository root.

### Output does not match `expected.bin`

Use the same input file and compare flat `.bin` files, not a TAP image. Leave off `--optimize` for a byte-exact test. Optimized output may differ even when the program runs correctly.

### The command cannot write an output file

Create the output folder first with `mkdir out`. The compiler does not create missing parent folders.

## 7. Package contents

```text
src/
  hp4t.py                         Python entry point
  pascal_compiler/                Compiler and bundled Z80 assembler
  upeepz80/                       Z80 peephole optimizer
SKOOLKIT-GPL-3.0.txt              Assembler license notice
UPEEPZ80-LICENSE.txt              Optimizer license notice
test/src/                         Pascal test programs
test/results/                     Saved binaries, hashes, assembly, and errors
README.md                         This user guide
LICENSE                           Distribution terms and notices
```

## License and credits

Read [`LICENSE`](LICENSE) before using, changing, or sharing the package. Its terms allow non-commercial use; commercial use requires separate written permission. That permission does not cover HiSoft software or other files missing from this package.

The bundled `upeepz80` optimizer keeps its upstream terms in [`UPEEPZ80-LICENSE.txt`](UPEEPZ80-LICENSE.txt). The Z80 assembler is derived from SkoolKit; its GPL-3.0 notice is in [`SKOOLKIT-GPL-3.0.txt`](SKOOLKIT-GPL-3.0.txt).

Based on original work by [Supratim Sanyal of SANYALnet Labs](https://supratim-sanyal.blogspot.com/).
