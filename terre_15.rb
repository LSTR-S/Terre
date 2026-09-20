# frozen_string_literal: true

if ARGV.length < 2 || !ARGV.all? { |number| number.match?(/\A\d+\z/) }
  puts 'error'
  exit
end

numbers = ARGV.map(&:to_i)

0.upto(numbers.length - 2) do |index|
  if numbers[index] > numbers[index + 1]
    puts 'Pas triée !'
    exit
  end
end

puts 'Triée !'
