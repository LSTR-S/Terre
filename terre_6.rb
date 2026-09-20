# frozen_string_literal: true

if ARGV.length != 2 || !ARGV.all? { |number| number.match?(/\A[+]?\d+\z/) }
  puts 'error'
  exit
end

dividend = ARGV[0].to_i
divisor = ARGV[1].to_i

if divisor.zero? || divisor > dividend
  puts 'error'
  exit
end

rest = dividend % divisor
result = dividend / divisor

puts "result: #{result}"
puts "rest: #{rest}"
