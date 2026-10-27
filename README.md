# HiSoft Pascal 4T v1.7M Compatibility Port

## Python-hosted Pascal-to-Z80 compiler for the ZX Spectrum

This is a Python-hosted Pascal-to-Z80 compiler for supported HiSoft Pascal 4T
v1.7M Pascal sources. It produces byte-identical ZX Spectrum Z80 machine-code
images and optional SJASMPlus-compatible assembler source. When requested, the
bundled optimizer reduces the assembler source before the optimized binary is
assembled.

Based on original work by Supratim Sanyal of SANYALnet Labs.

This directory is the user package. It contains the runnable compiler,
the test sources, and results.

This repository does not include HiSoft-owned software, the original HiSoft
tape/TZX image, tape-derived proprietary payloads, or a ZX Spectrum ROM.

Obtain any separately held material only from a lawful source and follow
its applicable terms.

## 1. Install

Mirror this complete directory to a local folder. Keep its
`src/` and `test/` subdirectories together. Python 3.10 or newer is
recommended.

The compiler and optimizer are included in `src/`; no package installation is
required. `--optimize` uses the bundled `upeepz80` source before assembling the
optimized output.

## 2. Compile a Pascal program

Run the included entry point from the copied package directory:

```text
python src/hp4t.py SOURCE.pas -o OUTPUT.bin
```

For example, from the package root:

```text
mkdir out
python src/hp4t.py test/src/positive/literal_001/input.pas -o out/literal_001.bin --asm out/literal_001.asm
```

The command-line form is:

```text
python src/hp4t.py SOURCE -o OUTPUT [--asm ASM] [--optimize] [--tap]
```

Use `python src/hp4t.py --help` for the command help.

## 3. Understand the output files

The compiler always writes the compatibility output requested by `-o`:

- `OUTPUT.bin` is the flat, non-optimized Z80 image by default, or the
  optimized Z80 image when `--optimize` is specified.
- `OUTPUT.asm` from `--asm` is the true SJASMPlus-compatible assembly source
  for the exact binary written to `OUTPUT.bin`.
- `--tap` wraps the selected binary in a standard Spectrum TAP file.

Example with the optional optimizer:

```text
python src/hp4t.py test/src/positive/literal_001/input.pas -o out/literal_001.bin --asm out/literal_001-optimized.asm --optimize
```

With `--optimize`, the internal assembler-source bridge is temporary unless
`--asm` is supplied. The saved `.asm` is the optimized source that corresponds
to the optimized `OUTPUT.bin`.

## 4. Use the included corpus

The package includes 215 Pascal source programs:

- 145 positive programs under `test/src/positive/`;
- 70 negative or exploratory programs under `test/src/negative/`.

Each source is named `input.pas`. The matching result directory is under
`test/results/`:

```text
test/
  src/
    positive/<case>/input.pas
    negative/<case>/input.pas
  results/
    positive/<case>/
    negative/<case>/
```

For a positive case, the result directory normally contains:

```text
expected.bin             original-compatible reference bytes
expected.bin.sha         SHA-256 digest of expected.bin
port.bin                 Python compiler bytes
port.bin.sha             identical SHA-256 digest of port.bin
port.asm                 true assembly for port.bin
port-optimized.bin       optimized Python compiler bytes
port-optimized.asm       true assembly for port-optimized.bin
```

`port.bin` must equal `expected.bin` byte for byte for a promoted positive
case. `port-optimized.bin` is intentionally a different output: it is the
binary produced from the optimized assembler source and is not expected to
match the original compiler. The `.sha` sidecars beside `expected.bin` and
`port.bin` contain the same SHA-256 digest, making byte identity easy to
verify without a generated manifest.

Promoted negative cases contain `expected_err.bin` and `port.err`. Exploratory
negative cases are retained for discovery and may not contain an expected
diagnostic. They are not evidence of a byte-exact negative result until a
reference capture has been promoted.

To inspect one case:

```text
python src/hp4t.py test/src/positive/literal_001/input.pas -o out/literal_001.bin --asm out/literal_001.asm
```

Compare the resulting binary with the checked-in reference. On PowerShell:

```powershell
Get-FileHash test\results\positive\literal_001\expected.bin -Algorithm SHA256
Get-FileHash out\literal_001.bin -Algorithm SHA256
```

On Linux or macOS:

```sh
sha256sum test/results/positive/literal_001/expected.bin out/literal_001.bin
```

## 5. Compatibility boundary

The acceptance claim is deliberately bounded:

```text
R(s) ≡ P(s)
```

For every promoted source `s`, the original-compiler reference result `R(s)`
and the Python-port result `P(s)` have the same required observable result,
including byte-exact output for positive cases and the captured diagnostic
projection for promoted negative cases.

This is a compatibility release, not an improved or extended HiSoft Pascal
compiler. The port reproduces observed behavior inside the tested boundary,
including quirks where required. Bug fixes, language extensions, normalized
diagnostics, and other improvements belong in separate work and must not be
presented as part of this compatibility claim.

The included corpus is therefore the authoritative practical scope of this
package. A source form outside the corpus may be unsupported or may produce an
output that has not been proven equivalent to the original compiler.

## 6. Troubleshooting

### `No module named pascal_compiler`

Keep the complete `src/` directory beside `hp4t.py` and run the product with
`python src/hp4t.py ...` from the copied package directory.

### The output does not match `expected.bin`

Check that you used the same source file and did not compare a TAP file with a
flat binary. Without `--optimize`, the compatibility output is the unoptimized
flat image; with `--optimize`, `OUTPUT.bin` is the assembled optimized image.

## 7. Package contents

```text
src/
  hp4t.py                         compatibility import/entry-point shim
  pascal_compiler/                compiler implementation and data
  upeepz80/                        bundled Z80 peephole optimizer
SKOOLKIT-GPL-3.0.txt              assembler license notice
UPEEPZ80-LICENSE.txt              optimizer license notice
test/src/                         complete Pascal input corpus
test/results/                     per-source binaries, hashes, and assembler sources
README.md                         this user manual
LICENSE                           distribution license and notices
```

The package is intentionally focused on running the port and checking its
results. Reverse-engineering notes, original-machine tooling, tape images,
ROM files, historical evidence, and byte-listing output are maintained outside
this distribution.

## License and notices

See [`LICENSE`](LICENSE) before copying or redistributing this package. The
compiler and corpus have different provenance from any separately obtained
HiSoft software or tape image; inclusion of this user package does not grant
rights to material that is not included here.

The bundled `src/upeepz80/` optimizer is distributed with its upstream license
at `UPEEPZ80-LICENSE.txt`. The bundled Z80 assembler implementation is derived
from SkoolKit and its GPL-3.0 license is included at
`SKOOLKIT-GPL-3.0.txt`. Those components remain subject to their own licenses.
