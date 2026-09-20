# frozen_string_literal: true

# &. n'appelle la méthode que si l'objet n'est pas nil.
argument = ARGV[0]&.match(/\A(1[0-2]|0?[1-9]):([0-5][0-9])(AM|PM)\z/i)

if ARGV.length != 1 || argument.nil?
  puts 'error'
  exit
end

hour = Regexp.last_match(1).to_i
minute = Regexp.last_match(2)
period = Regexp.last_match(3).upcase

if hour == 12 && period == 'AM'
  hour = 0
elsif hour != 12 && period == 'PM'
  hour += 12
end

hour = format('%02d', hour)
time = "#{hour}:#{minute}"
puts time
