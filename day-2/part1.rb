#!/usr/bin/env ruby

puts File.readlines("input")
    .map{|line| line
        .chomp
        .split("x")
        .map(&:to_i)
    }
    .map{|dim|
        l, w, h = dim
        areas = [
            l * w,
            w * h,
            h * l
        ]
        slack = areas.min
        surf = areas.map{|x| 2*x }.inject(&:+)

        surf + slack
    }
    .inject(&:+)
