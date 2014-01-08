# Chapter 06
# 6.2 - few things to try -

# Angry Boss

puts 'You go into you boss\'s office, you\'ve been wanting to ask him something.'
puts 'You finally have built up the courage to ask.'

question = gets.chomp.capitalize


puts 'Your boss looks at you and says, '
puts '"' + question.upcase + '!"'
puts 'You run from the office.'
puts ''

# Table of Contents

line_width = 40

puts ("Table of Contents".center(line_width*1.5))
puts " "
puts ("Chapter 1: ".ljust(line_width/2) + "Getting Started".ljust(line_width/2) + "page 1".rjust(line_width/2))
puts ("Chapter 2: ".ljust(line_width/2) + "Numbers".ljust(line_width/2) + "page 9".rjust(line_width/2))
puts ("Chapter 3: ".ljust(line_width/2) + "Letters".ljust(line_width/2) + "page 13".rjust(line_width/2))

puts " "

puts "Han looks to the left,\"I'm going to fly in there.\""
puts "\"Your chances are " + rand(0...2001).to_s + " to 1,\" said C-3PO."
puts "\"NEVER TELL ME THE ODDS,\"" " yelled Han."