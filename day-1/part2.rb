#!/usr/bin/env ruby

tot = 0

File.read("input").chars.each_with_index do |char, i|
    tot +=
        case char
        when "(" then 1
        when ")" then -1
        else 0
        end
    if tot == -1
        puts(i + 1)
        exit
    end
end
