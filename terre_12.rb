# frozen_string_literal: true

# Chaque | du regex est un ou logique
if ARGV.length != 1 || !ARGV[0].match?(/\A([01]?[0-9]|2[0-3]):([0-5][0-9])\z/)
  puts 'error'
  exit
end

hour, minute = ARGV[0].split(':').map(&:to_i)
period = 'PM'

if hour > 12
  hour -= 12
elsif hour.zero?
  period = 'AM'
  hour = 12
elsif hour < 12
  period = 'AM'
end

hour = format('%02d', hour)
minute = format('%02d', minute)
time = "#{hour}:#{minute}#{period}"
puts time
