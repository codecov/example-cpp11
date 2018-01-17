# [Codecov][1] qmake_gcc_cpp11_gcov Example
[![Travis CI logo](TravisCI.png)](https://travis-ci.org)
![Whitespace](Whitespace.png)
[![Codecov logo](Codecov.png)](https://www.codecov.io)

[![Build Status](https://travis-ci.org/richelbilderbeek/travis_qmake_gcc_cpp11_gcov.svg?branch=master)](https://travis-ci.org/richelbilderbeek/travis_qmake_gcc_cpp11_gcov)
[![codecov.io](https://codecov.io/github/richelbilderbeek/travis_qmake_gcc_cpp11_gcov/coverage.svg?branch=master)](https://codecov.io/github/richelbilderbeek/travis_qmake_gcc_cpp11_gcov?branch=master)


The goal of this project is to have a clean Travis CI build, with specs:
 * C++ version: `C++11`
 * Build system: `qmake`
 * C++ compiler: `g++`
 * Libraries: `STL` only
 * Code coverage: `gcov` (note: it should show the code coverage is below 100%)
 * Source: multiple files

Additionally, the code coverage should be measured by CodeCov.
## Guide
### Travis Setup

Add to your `.travis.yml` file.
```yml
language: cpp
compiler: gcc
script:
  - ./build.sh
  - ./travis_qmake_gcc_cpp11_gcov
  - ./get_code_cov.sh # or how ever you get your coverage
after_success:
  - bash <(curl -s https://codecov.io/bash)
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
### Private Repos
Add to your `.travis.yml` file.
```yml
after_success:
  - bash <(curl -s https://codecov.io/bash) -t uuid-repo-token
```

## Other builds
### More complex builds
 * gcov in debug mode only: [travis_qmake_gcc_cpp11_debug_gcov](https://www.github.com/richelbilderbeek/travis_qmake_gcc_cpp11_debug_gcov)
 * C++14: [travis_qmake_gcc_cpp14_gcov](https://www.github.com/richelbilderbeek/travis_qmake_gcc_cpp14_gcov)

### Less complex builds
 * C++98: [travis_qmake_gcc_cpp98_gcov](https://www.github.com/richelbilderbeek/travis_qmake_gcc_cpp98_gcov)
 * No gcov: [travis_qmake_gcc_cpp11](https://www.github.com/richelbilderbeek/travis_qmake_gcc_cpp11)

## Support

### Contact
- Intercom (in-app messanger)
- Email: [support@codecov.io](mailto:support@codecov.io)
- Slack: [slack.codecov.io](https://slack.codecov.io)
- [gh/codecov/support](https://github.com/codecov/support)

1. More documentation at https://docs.codecov.io
2. Configure codecov through the `codecov.yml`  https://docs.codecov.io/docs/codecov-yaml

[1]: https://codecov.io/
