#!/usr/bin/env bash
#   *** validation ***
scripts/run-validator-tests.sh
scripts/run-checker-tests.sh

#    *** tests ***
echo ""
mkdir -p tests
echo "Generating answer for test #1"
scripts/gen-answer.sh tests/01 tests/01.a "tests" ""
echo ""
echo "Generating answer for test #2"
scripts/gen-answer.sh tests/02 tests/02.a "tests" ""
echo ""
echo "Generating answer for test #3"
scripts/gen-answer.sh tests/03 tests/03.a "tests" ""
echo ""
echo "Generating answer for test #4"
scripts/gen-answer.sh tests/04 tests/04.a "tests" ""
echo ""
echo "Generating answer for test #5"
scripts/gen-answer.sh tests/05 tests/05.a "tests" ""
echo ""
echo "Generating answer for test #6"
scripts/gen-answer.sh tests/06 tests/06.a "tests" ""
echo ""
echo "Generating answer for test #7"
scripts/gen-answer.sh tests/07 tests/07.a "tests" ""
echo ""
echo "Generating answer for test #8"
scripts/gen-answer.sh tests/08 tests/08.a "tests" ""
echo ""
echo "Generating answer for test #9"
scripts/gen-answer.sh tests/09 tests/09.a "tests" ""
echo ""
echo "Generating answer for test #10"
scripts/gen-answer.sh tests/10 tests/10.a "tests" ""
echo ""
echo "Generating answer for test #11"
scripts/gen-answer.sh tests/11 tests/11.a "tests" ""
echo ""
echo "Generating answer for test #12"
scripts/gen-answer.sh tests/12 tests/12.a "tests" ""
echo ""

g++ -std=c++17 sol.cpp -o sol

./sol < tests/01 > output.txt && ./check tests/01 output.txt tests/01.a
./sol < tests/02 > output.txt && ./check tests/02 output.txt tests/02.a
./sol < tests/03 > output.txt && ./check tests/03 output.txt tests/03.a
./sol < tests/04 > output.txt && ./check tests/04 output.txt tests/04.a
./sol < tests/05 > output.txt && ./check tests/05 output.txt tests/05.a
./sol < tests/06 > output.txt && ./check tests/06 output.txt tests/06.a
./sol < tests/07 > output.txt && ./check tests/07 output.txt tests/07.a
./sol < tests/08 > output.txt && ./check tests/08 output.txt tests/08.a
./sol < tests/09 > output.txt && ./check tests/09 output.txt tests/09.a
./sol < tests/10 > output.txt && ./check tests/10 output.txt tests/10.a
./sol < tests/11 > output.txt && ./check tests/11 output.txt tests/11.a
./sol < tests/12 > output.txt && ./check tests/12 output.txt tests/12.a
