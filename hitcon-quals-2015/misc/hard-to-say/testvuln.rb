#!/usr/bin/env ruby

fail 'flag?' unless File.file?('flag')

$stdout.sync = true

s = $stdin.gets.strip!

#a='syst';b='em';(a+b)+'(`cat flag`)'

val = eval(s).to_s
puts val

