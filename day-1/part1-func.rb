#!/usr/bin/env ruby
puts File.read("input").chars
    .map{|c| {"(" => 1, ")" => -1}.fetch(c, 0) }
    .reduce(&:+)
