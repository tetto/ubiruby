#!/usr/bin/env ruby

def generate(n)
  chars = [
    "qwrtpsdfghjklzxcvbnm",
    "eyuioa"
  ].map { |str| (str + str.upcase).split('') }
  
  delta = rand(2) # delta decides whether we start from alphabet 1 or two
  pass = ""
  # n - 2 alphanumeric
  (n-2).times do |index|
    alphabet_index = (index + delta) % 2
    alphabet = chars[alphabet_index]
    pass += alphabet.sample
  end
  # 2 digits
  2.times { pass += rand(10) }
  
  puts pass
end

if arg == "--version"
 puts "v.0.2 by Tetto Green"
else if arg.to_i > 2
 generate arg.to_i
else
 puts "\nUsage: \n ./generator <n> - generate password with length of <n> (<n> > 2)"
end
