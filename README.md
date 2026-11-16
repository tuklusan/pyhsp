# HiSoft Pascal 4T v1.7M Compatibility Port for the ZX Spectrum

## Python-hosted Pascal-to-Z80 compiler

This Python-hosted compiler turns supported HiSoft Pascal 4T v1.7M source code into Z80 programs for the Sinclair ZX Spectrum. The test corpus lets you compare its output byte for byte with saved HiSoft results. It can also save Z80 assembly, run the built-in optimizer, and make Spectrum TAP files.

This is a sister project of [ZX-UX: UNIX Operating System for Sinclair ZX Spectrum 48K](https://github.com/tuklusan/ZX-UX-The-ZX-Spectrum-48K-Unix-Project). The port provides the basis for the ZX-UX SDK's `rpc` Pascal compiler.

The package includes the compiler, its source code, tests, and saved results. It does **not** include HiSoft-owned software, the original HiSoft tape or TZX image, tape-derived proprietary files, or a ZX Spectrum ROM. Get any extra files from lawful sources and follow their terms.

## 1. Install

Copy or clone the complete repository to your computer. Keep `src/` and `test/` together. Python 3.10 or newer is recommended.

The compiler, bundled assembler, and `upeepz80` optimizer live in `src/`. No extra Python packages are needed. Run the commands below from the repository root.

## 2. Compile a Pascal program

Compile a Pascal source file to a flat Z80 binary:

```sh
python src/hp4t.py SOURCE.pas -o OUTPUT.bin
```

For a test run, build this sample and save its assembly:

```sh
mkdir out
python src/hp4t.py test/src/positive/literal_001/input.pas -o out/literal_001.bin --asm out/literal_001.asm
```

The command format is:

```text
python src/hp4t.py SOURCE -o OUTPUT [--asm ASM] [--optimize] [--tap]
```

Use `python src/hp4t.py --help` to see the options.

## 3. Choose your output

What `-o` writes depends on the flags:

- **Default:** A flat, unoptimized Z80 binary, such as `OUTPUT.bin`.
- **`--asm ASM`:** SJASMPlus-compatible assembly for the program bytes. Without `--optimize`, the saved assembly reproduces the flat binary.
- **`--optimize`:** Runs the bundled `upeepz80` optimizer on generated assembly, then assembles the result. The result may differ from HiSoft's bytes.
- **`--tap`:** Writes a standard Spectrum TAP image instead of a flat binary. Use a `.tap` filename with `-o`.

To save the optimized binary and the assembly used to build it:

```sh
python src/hp4t.py test/src/positive/literal_001/input.pas -o out/literal_001-optimized.bin --asm out/literal_001-optimized.asm --optimize
```

To package the program for tape loading:

```sh
python src/hp4t.py test/src/positive/literal_001/input.pas -o out/literal_001.tap --tap
```

With `--asm` and `--tap`, the assembly covers the code inside the TAP file, not its header. With `--optimize`, assembly is temporary unless you also pass `--asm`.

## 4. Check the compatibility corpus

The repository includes **215 Pascal source programs**:

- **145 positive cases** in `test/src/positive/`.
- **70 negative or exploratory cases** in `test/src/negative/`.

Each test uses `input.pas`. Its saved results appear in a matching folder:

```text
test/
  src/
    positive/<case>/input.pas
    negative/<case>/input.pas
  results/
    positive/<case>/
    negative/<case>/
```

A typical positive result directory contains:

```text
expected.bin             Reference output from the original compiler
expected.bin.sha         SHA-256 of expected.bin
port.bin                 Output from the Python port
port.bin.sha             SHA-256 of port.bin
port.asm                 Assembly for port.bin
port-optimized.bin       Binary assembled from optimized source
port-optimized.asm       Assembly for port-optimized.bin
```

For a promoted positive case, `port.bin` must match `expected.bin` **byte for byte**. Compare the two `.sha` hashes first. The optimized binary is a separate result and does **not** have to match HiSoft's bytes.

Promoted negative cases contain `expected_err.bin` and `port.err`. Other negative cases may lack a saved HiSoft error. Without one, they cannot prove an exact error match.

Build the `literal_001` example from Section 2. Then compare its checksum with the saved reference. On Windows PowerShell:

```powershell
Get-FileHash test\results\positive\literal_001\expected.bin -Algorithm SHA256
Get-FileHash out\literal_001.bin -Algorithm SHA256
```

On Linux or macOS:

```sh
sha256sum test/results/positive/literal_001/expected.bin out/literal_001.bin
```

Matching SHA-256 hashes support a byte-for-byte check. The saved hashes for `literal_001` match.

## 5. Know the compatibility limits

We check the port against saved HiSoft compiler results:

```text
R(s) ≡ P(s)
```

`R(s)` is the HiSoft result for source `s`; `P(s)` is the Python port's result. Promoted positive cases must match binary bytes. Promoted negative cases must match the saved error result.

We aim to match **HiSoft Pascal 4T v1.7M**, quirks and all, within these tests. We do not claim to fix old bugs, add new Pascal features, or match every source outside the corpus. Any new features would need their own tests.

## 6. Troubleshoot

### `No module named pascal_compiler`

Do not copy `hp4t.py` on its own. Keep it with `src/pascal_compiler/` and `src/upeepz80/`, then run `python src/hp4t.py ...` from the repo root.

### Output does not match `expected.bin`

Check that you used the same source. Compare flat `.bin` files, not a `.tap` image. Turn off `--optimize` for a byte-exact test; optimized code may differ even when it runs well.

### The command cannot write an output file

Create the output folder first with `mkdir out`. The tool will not make missing parent folders.

## 7. Package contents

```text
src/
  hp4t.py                         Python entry point
  pascal_compiler/                Compiler and bundled Z80 assembler
  upeepz80/                        Z80 peephole optimizer
SKOOLKIT-GPL-3.0.txt              Assembler license notice
UPEEPZ80-LICENSE.txt              Optimizer license notice
test/src/                         Pascal test programs
test/results/                     Saved binaries, checksums, assembly, and errors
README.md                         This manual
LICENSE                           Distribution terms and notices
```

## License and credits

Read [`LICENSE`](LICENSE) before you use, change, or share this package. Non-commercial use is allowed under its terms; commercial use needs separate written permission. This permission does not cover HiSoft software or other material that is not included here.

The bundled `upeepz80` optimizer retains its upstream terms in [`UPEEPZ80-LICENSE.txt`](UPEEPZ80-LICENSE.txt). The Z80 assembler is derived from SkoolKit; its GPL-3.0 notice is in [`SKOOLKIT-GPL-3.0.txt`](SKOOLKIT-GPL-3.0.txt).

Based on original work by [Supratim Sanyal of SANYALnet Labs](https://supratim-sanyal.blogspot.com/).
