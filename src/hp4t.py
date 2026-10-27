"""Backward-compatible entry point for the native Pascal compiler.

The implementation now lives in :mod:`pascal_compiler`; this module remains
because the original exploratory tests and scripts imported ``hp4t``.
"""
from __future__ import annotations
# Copyright (c) 2026 Supratim Sanyal of SANYALnet Labs.
# Based on original work by Supratim Sanyal of SANYALnet Labs.
# Distributed under the accompanying LICENSE for non-commercial use.

from pascal_compiler.codegen import Compiler, compile_file, make_tap
from pascal_compiler.errors import PascalError
from pascal_compiler.lexer import Token, lex
from pascal_compiler.listing import format_sjasmplus
from pascal_compiler.parser import (
    Assignment,
    Binary,
    Call,
    Compound,
    ForStatement,
    IfStatement,
    Number,
    Output,
    Parser,
    RepeatStatement,
    Parameter,
    Program,
    Routine,
    String,
    Variable,
    WhileStatement,
)

__all__ = [
    "Assignment", "Binary", "Compiler", "Compound", "ForStatement",
    "Call", "IfStatement", "Number", "Output", "Parser", "Parameter",
    "PascalError", "Program", "RepeatStatement", "Routine", "String",
    "Token", "Variable", "WhileStatement",
    "compile_file", "format_sjasmplus", "lex", "make_tap",
]


if __name__ == "__main__":
    from pascal_compiler.__main__ import main

    main()
