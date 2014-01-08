# Chapter 05 
# 5.6 - few things to try -

# full name greeting
puts ''
puts 'Hello there, may I have your first name?'
first_name = gets.chomp
puts ''

puts 'Great, may I have your second name?'
second_name = gets.chomp
puts ''

puts 'One more request, my I have your last name?'
last_name = gets.chomp
puts ''

puts 'It\'s great to meet you' + ' ' + first_name + ' ' + second_name + ' ' + last_name + '!'
puts ''

# bigger, better favorite number.
puts ''
puts 'Hi, so what is your favorite number?'


fav_num = gets.chomp.to_i
puts 'Oh,' + ' ' + fav_num.to_s + ' ' + 'thats good,' 

better_num = fav_num += 1

puts 'but' + ' ' + better_num.to_s + ' ' + 'is bigger and better.' 
puts 'Maybe' + ' ' + better_num.to_s + ' ' +  'should be your favorite.'
puts ''