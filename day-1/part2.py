#!/usr/bin/env python

tot = 0

with open('input') as f:
    for i, char in enumerate(f.read()):
        if char == '(':
            tot += 1
        elif char == ')':
            tot -= 1
        if tot == -1:
            print i + 1
            exit()
