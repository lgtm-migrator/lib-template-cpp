#/bin/bash

clang-format src/*.cpp test/*.cpp -i --style=Google
clang-tidy src/*.cpp test/*.cpp -- -Iincludes/
flake8 ./test/*.py