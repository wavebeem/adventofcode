#!/usr/bin/env ruby

puts File.readlines("input")
    .map{|line| line
        .chomp
        .split("x")
        .map(&:to_i)
    }
    .map{|dim|
        l, w, h = dim
        perimiters = [
            2 * l + 2 * w,
            2 * w + 2 * h,
            2 * h + 2 * l
        ]
        shortest = perimiters.min
        volume = l * w * h

        shortest + volume
    }
    .inject(&:+)
