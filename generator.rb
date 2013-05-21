#!/usr/bin/env ruby

arg = ARGV[0]
chars = "qwrtpsdfghjklzxcvbnmQWRTPSDFGHJKLZXCVBNM".split('') , "eyuioaEYUIOA".split('')
nums = "1234567890".split('')
pass = ""
init = rand(2)
if init == 0
 pass = chars[0].sample
else
 pass = chars[1].sample
end
if arg.to_i - 2 > 0
 (arg.to_i - 3).times {
  if init == 0
  pass += chars[1].sample
  init = 1
  else
  pass += chars[0].sample
  init = 0
  end
 }
 2.times {pass += nums.sample}
 puts pass
elsif arg == "--version"
 puts "v.0.1 by Tetto Green" 
else
 puts "\nUsage: \n ./generator <n> - generate password with length of <n> (<n> > 2)"
end
