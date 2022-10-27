#!/usr/bin/env ruby

op = ARGV.shift

if op == '+'
  result = 0
  ARGV.each { |n| result += n.to_i }
  puts result
end
