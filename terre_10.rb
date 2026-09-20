# frozen_string_literal: true

if ARGV.length != 1 || !ARGV[0].match?(/\A\d+\z/)
  puts 'error'
  exit
end

number = ARGV[0].to_i
racine = 1

while racine * racine < number
  racine += 1
end

if racine * racine != number
  puts 'erreur.'
  exit
end

puts racine
