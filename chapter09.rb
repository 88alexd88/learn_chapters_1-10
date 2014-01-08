# Chapter 09
# -few things to try-

puts " "
puts " "

def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return 'true'
      else
        return 'false'
      end
    break
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end

puts 'Hello, and thank you for...'

puts ''
ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?' 
  wets_bed = ask 'Do you wet the bed?' 
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts ''
puts 'DEBRIEFING:'
puts 'Thank you for...'

puts ''
puts wets_bed

puts ''
puts ''


puts 'Lets convert an old roman numeral'

def old_roman_numeral num
  old_ro = ""
  old_ro = old_ro + "M" * (num / 1_000)
  old_ro = old_ro + "D" * (num % 1_000 / 500)
  old_ro = old_ro + "C" * (num % 500 / 100)
  old_ro = old_ro + "L" * (num % 100 / 50)
  old_ro = old_ro + "X" * (num % 50 / 10)
  old_ro = old_ro + "V" * (num % 10 / 5)
  old_ro = old_ro + "I" * (num % 5 / 1)
  old_ro
end

my_num = gets.chomp
puts(old_roman_numeral(my_num.to_i))


puts " "
puts " "


puts "Lets convert a roman numeral"

def roman_numeral num
  thous = (num / 1_000)
  hunds = (num % 1_000 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10 )
  mod_ro = "M" * thous

    if hunds == 9
      mod_ro = mod_ro + "CM"
    elsif hunds == 4
      mod_ro = mod_ro + "CD"
    else
      mod_ro = mod_ro + "D" * (num % 1_000 / 500)
      mod_ro = mod_ro + "C" * (num % 500 / 100)
    end

    if tens == 9
      mod_ro = mod_ro + "XC"
    elsif tens == 4
      mod_ro = mod_ro + "XL"
    else
      mod_ro = mod_ro + "L" * (num % 100 / 50)
      mod_ro = mod_ro + "X" * (num % 50 / 10)
    end

    if ones == 9
      mod_ro = mod_ro + "IX"
    elsif ones == 4
      mod_ro = mod_ro + "IV"
    else
      mod_ro = mod_ro + "V" * (num % 10 / 5)
      mod_ro = mod_ro + "I" * (num % 5 / 1)
    end

  mod_ro
end

my_num = gets.chomp
puts(roman_numeral(my_num.to_i))