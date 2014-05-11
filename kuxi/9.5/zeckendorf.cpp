#include <stdlib.h>
#include <iostream>
#include <vector>

using namespace std;

int main(int argc, char** argv) {
    if (argc < 2) {
        std::cout << "Usage: " << argv[0] << " n" << std::endl;
        exit(1);
    }
    int n = atoi(argv[1]);
    int num = n;

    std::vector<int> fibonaccis, sum;
    int a = 1, b = 1;
    fibonaccis.push_back(1);
    fibonaccis.push_back(1);
    //Calculate fibonaccis upto n
    while(b < n) {
        int t = b;
        b = a + b;
        a = t;
        fibonaccis.push_back(b);
    }
    int i = fibonaccis.size() - 1;
    //Calculate sum
    while(n > 0) {
        if(fibonaccis[i] <= n) {
            std::cout << "found " << fibonaccis[i] << std::endl;
            sum.push_back(fibonaccis[i]);
            n -= fibonaccis[i];
            i--;
        }
        i--;
    }

    //Output answer
    std::cout << num << " = ";
    for(int i = 0; i < sum.size(); i++) {
        std::cout << sum[i] << " ";
    }
    std::cout << std::endl;
}
