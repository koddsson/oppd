package main

import "fmt"
import "strings"

func done(fives int, threes int) bool {
    return fives >= 0 && fives % 3 == 0 && threes % 5 == 0
}

func solve(n int) string {
    var fives = n
    var threes = 0
    var res string

    for fives >= 0 && !done(fives, threes) {
        fives -= 5
        threes += 5
    }
    if done(fives, threes) {
        res = strings.Repeat("5", fives) + strings.Repeat("3", threes)
    } else {
        res = "-1"
    }
    return res
}

func main() {
    var cases int
    fmt.Scanf("%d", &cases)
    for i := 0; i < cases; i++ {
        var n int
        fmt.Scanf("%d", &n)
        var solution = solve(n)
        fmt.Printf("%s\n", solution)
    }
}
