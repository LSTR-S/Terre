# frozen_string_literal: true

if ARGV.empty? || !ARGV[0].match?(/\A[a-z]\z/)
  puts 'error'
  exit
end

alphabet = ''
letter = ARGV[0]
last_letter = 122

letter.ord.upto(last_letter) do |code|
  alphabet += code.chr
end

puts alphabet
