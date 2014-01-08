# Chapter 07
# - few things to try -

# 99 Bottles of Beer on the Wall

bottles = 99

while bottles >= 0
  puts bottles.to_s + ' bottles of beer on the wall ' + bottles.to_s + ' bottles of beer. Take one down pass it around...'
  bottles -=1
end

puts 'They looked around and had a big frown because there are 0 bottle of beer on the wall.'

# Deaf Grandma

line_width = 30

intro = 'You have a reaseach paper about family history to write. 
You go to your Grandma to ask her some questions.
She is a bit hard of hearing, but says she will
fill you in best she can.'

puts ''
puts (intro.ljust(line_width))
puts ''

puts 'What do you want to ask her?'

bye_count = 0

while true
  questions = gets.chomp

  if questions == 'BYE'
    bye_count = bye_count + 1
  else
    bye_count = 0
  end

break if bye_count >= 3

  if questions != questions.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
    puts 'WHAT!?'

  else questions.upcase == true
    year = (rand(70)+1920)
    puts "NO, NOT SINCE #{year}."
    
  end 
end

puts 'Bye Dear!'
