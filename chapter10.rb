# Chapter 10


# Sort

def sort array
  rec_sort array, []
end

def rec_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end

  smallest = unsorted_array.pop
  still_unsorted_array = []

  unsorted_array.each do |word|
    if word < smallest
      still_unsorted_array.push smallest
      smallest = word
    else
      still_unsorted_array.push word
    end
   end
  sorted_array.push smallest
  rec_sort still_unsorted_array, sorted_array
end

puts(sort(['well','hope','this','works',' ']))

puts ''

# Dictionary Sort

def sort array
  rec_sort array, []
end

def rec_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end

  smallest = unsorted_array.pop
  still_unsorted_array = []

  unsorted_array.each do |word|
    if word.downcase < smallest.downcase
      still_unsorted_array.push smallest
      smallest = word
    else
      still_unsorted_array.push word
    end
  end
  sorted_array.push smallest
  rec_sort still_unsorted_array, sorted_array
end

puts(sort(['Well','hope','This','works',' ']))

puts ''

# shuffle sort

def shuff array
  shuffle = []

  while array.length > 0
    rand_index = rand(array.length)
    num_index = 0
    new_array = []

      array.each do |item|
        if num_index == rand_index
          shuffle.push item
        else
          new_array.push item
        end
       num_index = num_index + 1
      end

    array = new_array
  end

  shuffle
end

puts shuff([1,2,3,4,5,6])


#Counting in English



def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end

  if number == 0
    return 'zero'
  end

    # No more special cases! No more returns!
  num_string = '' # This is the string we will return.
  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']

  # "left" is how much of the number
  # we still have left to write out.
  # "write" is the part we are
  # writing out right now.
  # write and left...get it? :)
  left = number

  write = left / 1_000_000_000_000
          left = left - write * 1_000_000_000_000

  if write>0
    trillions = english_number write
    num_string += trillions + ' trillion'   
      if left >0
        num_string += ' '
      end
  end

  write = left / 1_000_000_000
  left = left - write * 1_000_000_000

  if write>0
    billions = english_number write
    num_string += billions + ' billion'
      if left >0
        num_string += ' '
      end
  end 

    write = left / 1_000_000 
    left = left - write * 1_000_000

  if write > 0
  # Now here's the recursion:
    million = english_number write
    num_string = num_string + million + ' million'
    if left > 
      num_string = num_string + ' '
    end
  end

  write = left / 1_000 
  left = left - write * 1_000 

  if write > 0
    thousand = english_number write
    num_string = num_string + thousand + ' thousand'
    if left > 0
    # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end


  write = left/100 # How many hundreds left?
  left = left - write*100 # Subtract off those hundreds.

  if write > 0
  # Now here's the recursion:
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
      if left > 0
      # So we don't write 'two hundredfifty-one'...
        num_string = num_string + ' '
      end
  end

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
  # Since we can't write "tenty-two" instead of
  # "twelve", we have to make a special exception
  # for these.
      num_string = num_string + teenagers[left-1]
  # The "-1" is because teenagers[3] is
  # 'fourteen', not 'thirteen'.
  # Since we took care of the digit in the
  # ones place already, we have nothing left to write.
    left = 0
    else
      num_string = num_string + tens_place[write-1]
  # The "-1" is because tens_place[3] is
  # 'forty', not 'thirty'.
    end

    if left > 0
  # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1]
  # The "-1" is because ones_place[3] is
  # 'four', not 'three'.
  end

  # Now we just return "num_string"...
    num_string
end

puts 'Please put a positive number to be written out'
  user_number = gets.chomp.to_i

puts english_number(user_number)

# NEW - Bottles of beer on the wall

puts ' '

puts 'How many beers would you like to count off?'
  beer_to_count = gets.chomp.to_i


while beer_to_count >= 0
  puts english_number(beer_to_count) + " bottles of beer on the wall, " + english_number(beer_to_count) + " Take one down pass it around..."
        beer_to_count -=1
end


