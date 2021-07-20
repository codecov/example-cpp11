SOURCES += main.cpp

QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror

# gcov
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov

# C++11
CONFIG += c++11
QMAKE_CXXFLAGS += -std=c++11
