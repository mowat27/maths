#!/usr/bin/env ruby

def maths(op, numbers)
  case op
  when '+'
    numbers.reduce(0) { |result, n| result + n.to_i }
  when '-'
    numbers.reduce(0) { |result, n| result - n.to_i }
  when '/'
    numbers.reduce { |result, n| result.to_i / n.to_i unless n.to_i == 0 }
  when 'x'
    numbers.reduce(0) { |result, n| result * n.to_i }
  end
end

if __FILE__ == $0
  op = ARGV.shift
  puts maths(op, ARGV) || 0
end
