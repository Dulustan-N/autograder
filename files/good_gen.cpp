#include "testlib.h"

#include<iostream>
using namespace std;

int main(int argc, char* argv[]) {
    registerGen(argc, argv, 1);
    
    int n = opt<int>(1);
    
    cout << n << endl;
    for(int i=0; i<n; i++)
        cout << rnd.next(-10000, 10000) << ' ';
    cout << endl;
}