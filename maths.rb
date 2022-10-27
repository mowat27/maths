#!/usr/bin/env ruby

# This is dreadful code!
# PLEASE don't do this sort of thing for real
# Comments are just to highlight the mad things that happen

OPS = {
  '+' => ->(numbers) { numbers.reduce(0) { |result, n| result + n.to_i } },
  '-' => ->(numbers) { numbers.reduce(0) { |result, n| result - n.to_i } },
  'x' => ->(numbers) { numbers.reduce(0) { |result, n| result * n.to_i } },
  '/' => ->(numbers) { numbers.reduce { |result, n| result.to_i / n.to_i unless n.to_i == 0 } },
}
OPS.default = -> (numbers) { 0 }

# This could be really useful so making it a library function
def maths(op, numbers)
  OPS[op].call(numbers)
end

if __FILE__ == $0
  op = ARGV.shift
  # TODO refactor out duplicated 0
  puts maths(op, ARGV) || 0
end
