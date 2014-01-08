# Chapter 08
# -few things to try-

# Building and sorting an array
puts 'Please enter a list of words.'

wordlist = []

while true 
  term = gets.chomp
  puts = term

  if term == ''
    break
  end

  wordlist.push term
end

puts 'Okay, great. Here is your list in order:'
puts wordlist.sort

# Table of contents, revisited 
# Added year 

puts " "


title = 'Table of Contents'
chapters = [['Getting Started', 1 , 1723],
      ['Numbers', 9, 1824],
      ['Letters', 13, 1926]]
puts title.center(60)
puts ""
chap_num = 1

chapters.each do |chap|
name = chap[0]
page = chap[1]
year = chap[2]

beginning = 'Chapter ' + chap_num.to_s + ': ' + name
middle = 'page ' + page.to_s
ending = "year update: " + year.to_s
puts beginning.ljust(30) + middle.ljust(20) + ending.rjust(10)
chap_num = chap_num + 1

end
puts " "