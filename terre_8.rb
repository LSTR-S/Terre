# frozen_string_literal: true

if ARGV.count != 1 || ARGV[0].match?(/\A\d+\z/)
  puts 'error'
  exit
end

texte = ARGV[0]
count = 0

texte.each_char do |_caractere|
  count += 1
end

puts count
