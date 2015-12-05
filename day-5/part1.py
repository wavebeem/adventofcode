#!/usr/bin/env python
import re

RE_BLACKLIST = re.compile('ab|cd|pq|xy')

def vowel_count(string):
    return sum(1 for c in string if c in 'aeiou')

def has_double(string):
    for i in xrange(len(string) - 1):
        if string[i] == string[i + 1]:
            return True
    return False

def is_blacklisted(string):
    return RE_BLACKLIST.search(string) is not None

def is_nice(string):
    return (vowel_count(string) >= 3 and
        has_double(string) and
        not is_blacklisted(string))

total = 0

with open('input') as file:
    for line in file:
        line = line.rstrip()
        if is_nice(line):
            total += 1

print total
