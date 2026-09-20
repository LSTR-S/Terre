# frozen_string_literal: true

if ARGV.length != 3 || ARGV.length != ARGV.uniq.length || !ARGV.all?(/\A\d+\z/)
  puts 'error'
  exit
end

list_n = ARGV.map(&:to_i)

if (list_n[0] > list_n[1] && list_n[0] < list_n[2]) || (list_n[0] < list_n[1] && list_n[0] > list_n[2])
  result = list_n[0]
elsif (list_n[1] > list_n[0] && list_n[1] < list_n[2]) || (list_n[1] < list_n[0] && list_n[1] > list_n[2])
  result = list_n[1]
else
  result = list_n[2]
end

puts result
