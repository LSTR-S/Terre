# frozen_string_literal: true

alphabet = ''
alpha_list = (97..122)

alpha_list.each do |code|
  alphabet += code.chr
end

puts alphabet
