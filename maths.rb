#!/usr/bin/env ruby

op = ARGV.shift

case op
when '+'
  puts ARGV.reduce(0) { |result, n| result + n.to_i }
when '-'
  puts ARGV.reduce(0) { |result, n| result - n.to_i }
when '/'
  puts ARGV.reduce { |result, n| result.to_i / n.to_i unless n.to_i == 0 }
when 'x'
  puts ARGV.reduce(0) { |result, n| result * n.to_i }
end
