#!/usr/bin/env ruby

op = ARGV.shift

puts case op
when '+'
  ARGV.reduce(0) { |result, n| result + n.to_i }
when '-'
  ARGV.reduce(0) { |result, n| result - n.to_i }
when '/'
  ARGV.reduce { |result, n| result.to_i / n.to_i unless n.to_i == 0 }
when 'x'
  ARGV.reduce(0) { |result, n| result * n.to_i }
else
  0
end
