#!/usr/bin/env ruby

p File.read("input").chars
    .inject([[0, 0], {"0 0" => 1}]) {|acc, c|
        pos, data = acc
        x, y = pos
        pos_ =
            case c
            when "^" then [x, y + 1]
            when "v" then [x, y - 1]
            when ">" then [x + 1, y]
            when "<" then [x - 1, y]
            else [x, y]
            end
        k = pos_.join(" ")
        data[k] = 1 + data.fetch(k, 0)
        [pos_, data]
    }[1].length
