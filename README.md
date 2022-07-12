# LIBRARY Template

:warning: Do the following if creating a library! :warning:
- Add this repository to codeclimate
- Add the  codeclimate reporter ID as `CC_TEST_REPORTER_ID` in GitHub Webstie
  - Settings->Secrets->Actions->Repository Secrets
  - Find the ID in Code Climate Repo Settings -> Test Coverage
- Replace "lib-template" and "LibraryX" in CMakeLists.txt
- Replace the repository name in the following badges:

[![Language grade: C/C++](https://img.shields.io/lgtm/grade/cpp/g/Trashcat-Robotics/lib-template-cpp.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/Trashcat-Robotics/lib-template-cpp/context:cpp)
[![Language grade: Python](https://img.shields.io/lgtm/grade/python/g/Trashcat-Robotics/lib-template-cpp.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/Trashcat-Robotics/lib-template-cpp/context:python)
[![Test Coverage](https://api.codeclimate.com/v1/badges/ec76771489a475bf74bd/test_coverage)](https://codeclimate.com/github/Trashcat-Robotics/lib-template/test_coverage)

## Dev

After cloning:
```sh
python3 -m pip install -r requirements.txt
pre-commit install
pre-commit autoupdate # if needed
```

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

Run `checks.sh` prior to pushing code. Resolve any errors that arise.

`.github/workflows/*.yml` files can be validated at the [actionlint playground](https://rhysd.github.io/actionlint/).
