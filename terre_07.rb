# frozen_string_literal: true

if ARGV.length != 1
  puts 'error'
  exit
end

texte = ARGV[0]

(texte.length - 1).downto(0) do |index|
  print texte[index]
end

puts
