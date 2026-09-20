# frozen_string_literal: true

if ARGV.length != 1 || !ARGV[0].match?(/\A[+-]?\d+\z/)
  puts 'error'
  exit
end

number = ARGV[0].to_i

if (number % 2).zero?
  puts 'Even'
else
  puts 'Odd'
end
