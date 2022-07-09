#/bin/bash

clang-format src/*.cpp test/*.cpp -i --style=Google
clang-tidy --export-fixes=clang_tidy_output.yml \
    -checks=boost-*,bugprone-*,performance-*,readability-*,portability-*,modernize-*,clang-analyzer-*,cppcoreguidelines-* src/*.cpp test/*.cpp -- -Iincludes/
flake8 ./test/*.py