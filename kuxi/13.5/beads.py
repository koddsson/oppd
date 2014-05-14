import sys
import operator


def solve(beads):
    s = map(lambda n: pow(n, n - 1), beads)
    return reduce(operator.mul, s) * pow(sum(beads), len(beads) - 2)


if __name__ == '__main__':
    lines = sys.stdin.readlines()
    i = 1
    while i < len(lines):
        beads = map(int, lines[i + 1].split())
        sol = solve(beads)
        print int(sol) % 1000000007
        i += 2
