#!/usr/bin/env ruby
require "digest/md5"

class Miner
    def initialize(prefix)
        @prefix = prefix
    end

    def find
        n = 0
        begin
            n += 1
            hex = Digest::MD5.hexdigest(@prefix + n.to_s)
        end until hex =~ /^0{5}/
        n
    end
end


p Miner.new(File.read("input").chomp).find
