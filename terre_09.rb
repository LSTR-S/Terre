# frozen_string_literal: true

if ARGV.length != 2 || !ARGV.all? { |number| number.match?(/\A\d+\z/) }
  puts 'error'
  exit
end

nombre = ARGV[0].to_i
exposant = ARGV[1].to_i
result = 1

exposant.times do
  result *= nombre
end

puts result
