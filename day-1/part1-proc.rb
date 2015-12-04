#!/usr/bin/env ruby

tot = 0

open "input" do |file|
    file.read.chars.each do |char|
        case char
        when '(' then tot += 1
        when ')' then tot -= 1
        end
    end
end

puts tot
