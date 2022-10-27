#!/usr/bin/env ruby

op = ARGV.shift

case op
when '+'
  result = 0
  ARGV.each { |n| result += n.to_i }
  puts result
when '-'
  result = 0
  ARGV.each { |n| result -= n.to_i }
  puts result
when '/'
  result = ARGV.shift.to_i
  for n in ARGV
    result = result / n.to_i unless n.to_i == 0
  end
  puts result
when 'x'
  result = ARGV.shift.to_i
  ARGV.each { |n| result *= n.to_i }
  puts result
end
