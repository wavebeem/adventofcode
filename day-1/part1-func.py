#!/usr/bin/env python
txt = open("input").read()
jumps = map(lambda c: {'(': 1, ')': -1}.get(c, 0), txt)
floor = reduce(lambda a, b: a + b, jumps)
print floor
