# [Codecov](https://codecov.io) qmake_gcc_cpp11_gcov Example

[![codecov.io](https://codecov.io/github/codecov/example-cpp11/coverage.svg?branch=master)](https://codecov.io/github/codecov/example-cpp11?branch=master)
[![Build Status](https://github.com/codecov/example-cpp11/actions/workflows/ci.yml/badge.svg)]
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fcodecov%2Fexample-cpp11.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Fcodecov%2Fexample-cpp11?ref=badge_shield)

The goal of this project is to have a clean GitHub Actions CI build, with specs:
 * C++ version: `C++11`
 * Build system: `qmake`
 * C++ compiler: `g++`
 * Libraries: `STL` only
 * Code coverage: `gcov` (note: it should show the code coverage is below 100%)
 * Source: multiple files

## Guide
### GitHub Actions Step
Add to your workflows file.
```yml
  - name: Upload to Codecov (Action)
    uses: codecov/codecov-action@v2
    with:
      token: {{ token }}
```
or
```yml
  - name: Upload to Codecov (Uploader)
    run: |
      curl -Os https://uploader.codecov.io/latest/linux/codecov
      chmod +x codecov
      ./codecov -t {{ token }}
```

### Produce Coverage Reports
#### gcov
```sh
#!/bin/bash
for filename in `find . | egrep '\.cpp'`;
do
  gcov-5 -n -o . $filename > /dev/null;
done
```

## Caveats
### Private Repo
Repository tokens are required for (a) all private repos, (b) public repos not using Travis-CI, CircleCI or AppVeyor. Find your repository token at Codecov and provide via appending `-t <your upload token>` to you where you upload reports.

## Links
- [Community Boards](https://community.codecov.io)
- [Support](https://codecov.io/support)
- [Documentation](https://docs.codecov.io)

## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fcodecov%2Fexample-cpp11.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Fcodecov%2Fexample-cpp11?ref=badge_large)
