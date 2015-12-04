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
            input = @prefix + n.to_s
            hex = Digest::MD5.hexdigest(input)
        end until hex =~ /^0{6}/
        n
    end
end


p Miner.new(File.read("input").chomp).find
