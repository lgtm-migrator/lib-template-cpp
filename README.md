# LIBRARY Template

:warning: Do the following if creating a library! :warning:
- Replace "lib-template" and "LibraryX" in CMakeLists.txt
- Replace the repository name in the following badges:

[![Language grade: C/C++](https://img.shields.io/lgtm/grade/cpp/g/Trashcat-Robotics/lib-template-cpp.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/Trashcat-Robotics/lib-template-cpp/context:cpp)
[![Language grade: Python](https://img.shields.io/lgtm/grade/python/g/Trashcat-Robotics/lib-template-cpp.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/Trashcat-Robotics/lib-template-cpp/context:python)

## Dev

After cloning:
```sh
sudo apt install clang-tidy gcovr
python3 -m pip install -r requirements.txt
pre-commit install
pre-commit autoupdate # if needed
```

`pre-commit` is used to lint this repository. Try `pre-commit run --all-files`.
- `pre-commit` is a git hook that is automatically called first when `git commit`
is invoked.
- Errors will prevent code from being committed.


To build:
```sh
cd <PROJECT_ROOT_DIR>
mkdir -p build
cd build
cmake ..
make
make test
make gcov
# make clean
```

`.github/workflows/*.yml` files can be validated at the [actionlint playground](https://rhysd.github.io/actionlint/).
