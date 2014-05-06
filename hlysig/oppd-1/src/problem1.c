#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <unistd.h>
#include "numbers.h"
#include "test/test_numbers.h"

void runTests(void) {
    int number_failed;
    Suite *s = numbers_suite ();
    SRunner *sr = srunner_create (s);
    srunner_run_all (sr, CK_NORMAL);
    number_failed = srunner_ntests_failed (sr);
    srunner_free (sr);
}

int main(int argc, char** argv) {
    // Tell the compile of extern variables from unistd.
    // we use this variables with getopt.
    extern int optind, optopt;
    extern char* optarg;
    bool testRun = false;
    int c;
    long limit = 1000;

    while ((c = getopt(argc, argv, "tl:")) != -1) {
        if(c == 't') {
            testRun = true;
        }
        
        if(c == 'l') {
            limit = atol(optarg);
        }
        
        if(c == '?') {
            puts("Error!");
            return 2;
        }
    }

    if(testRun) {
        runTests();
    }
    else {
        puts("Solution to problem 1:");
        long sum = 0;
        int i;
        for(i = 0; i < limit; i++) {
            if(dividableBy(i, 3) || dividableBy(i, 5)) {
                sum += i;
            }
        }
        printf("= %lu\n", sum);

    }

    return 0;
}
