# frozen_string_literal: true

if ARGV.length != 1 || !ARGV[0].match?(/\A\d+\z/)
  puts 'error'
  exit
end

number = ARGV[0].to_i
divisor = 2

if number < 2
  puts "Non, #{number} n'est pas un nombre premier."
  exit
end

while number > divisor
  if (number % divisor).zero?
    puts "Non, #{number} n'est pas un nombre premier."
    exit
  end
  divisor += 1
end

puts "Oui, #{number} est un nombre premier."
