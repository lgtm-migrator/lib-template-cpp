#!/bin/bash

clang-format src/*.cpp test/*.cpp -i --style=Google


clang-tidy --export-fixes=clang_tidy_output.yml \
    -header-filter=.* \
    -checks=boost-*,bugprone-*,performance-*,readability-*,portability-*,modernize-*,clang-analyzer-*,cppcoreguidelines-* \
    src/*.cpp -- -Iincludes/

cppcheck --enable=all --suppress=missingIncludeSystem --suppress=unusedFunction src/*.cpp
flake8 ./test/*.py
