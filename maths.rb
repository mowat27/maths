#!/usr/bin/env ruby

OPS = {
  '+' => ->(numbers) { numbers.reduce(0) { |result, n| result + n.to_i } },
  '-' => ->(numbers) { numbers.reduce(0) { |result, n| result - n.to_i } },
  '/' => ->(numbers) { numbers.reduce { |result, n| result.to_i / n.to_i unless n.to_i == 0 } },
  'x' => ->(numbers) { numbers.reduce(0) { |result, n| result * n.to_i } },
}
OPS.default = -> (numbers) { 0 }

def maths(op, numbers)
  OPS[op].call(numbers)
end

if __FILE__ == $0
  op = ARGV.shift
  puts maths(op, ARGV) || 0
end
