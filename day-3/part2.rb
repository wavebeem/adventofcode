#!/usr/bin/env ruby

houses = Hash.new(0)
houses["0 0"] = 2

txt = File.read("input")
# txt = "^v"

arr = txt.chomp.chars.each_with_index

robo_txt = arr.select{|c, i| i.even? }.map{|c, i| c }
norm_txt = arr.select{|c, i| i.odd? }.map{|c, i| c }

module Santa
    def self.move(c, p)
        x, y = p
        case c
        when "^" then [x, y + 1]
        when "v" then [x, y - 1]
        when ">" then [x + 1, y]
        when "<" then [x - 1, y]
        else raise
        end
    end

    def self.visit(houses, txt)
        pair = txt.inject([[0, 0], houses]) do |acc, c|
            pos, houses = acc
            pos_ = move(c, pos)
            k = pos_.join(" ")
            houses[k] += 1

            [pos_, houses]
        end
        pair[1]
    end
end

houses = Santa.visit(houses, robo_txt)
houses = Santa.visit(houses, norm_txt)

p houses.length
