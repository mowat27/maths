#!/usr/bin/env ruby

op = ARGV.shift

if op == '+'
  result = 0
  ARGV.each { |n| result += n.to_i }
  puts result
elsif op == '-'
  result = 0
  ARGV.each { |n| result -= n.to_i }
  puts result
elsif op == '/'
  result = ARGV.shift.to_i
  for n in ARGV
    result = result / n.to_i unless n.to_i == 0
  end
  puts result
end
