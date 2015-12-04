#!/usr/bin/env python

tot = 0

with open('input') as file:
    for char in file.read():
        if char == '(':
            tot += 1
        elif char == ')':
            tot -= 1

print tot
