#include<iostream>
using namespace std;

int solve(int a, int b)
{
    //Пишите ваш код тут
    return a+b;
}

#ifdef TESTING
#define CATCH_CONFIG_MAIN
#include "catch2/catch.hpp"
TEST_CASE( "Factorials are computed", "[factorial]" ) {
    REQUIRE( solve(1, 1) == 2 );
    REQUIRE( solve(2'147'483'648, 2'147'483'647) == -1 );
}
#else
int main()
{
    int a, b; cin >> a >> b;
    cout << solve(a, b) << endl;
}
#endif