def verse(number)
   lines = [
       "and a Partridge in a Pear Tree", "two turtle doves",
       "three french hens", "four calling birds",
       "five gold rings", "six geese-a-laying",
       "seven swans-a-swimming", "eight maids-a-milking",
       "nine ladies dancing", "ten lords-a-leaping",
       "eleven pipers piping", "twelve drummers drumming"
   ]

   days = ["1st", "2nd", "3rd", "4th", "5th", "6th", "7th", "8th", "9th", "10th", "11th", "12th"]

   puts "On the #{days[number-1]} day of Christmas, my true love gave to me"
   if number == 1
       puts "a partridge in a pear tree"
   else
       for a in 1..(number)
           puts lines[number-a]
       end
   end
end

def entire_song

   (1..12).each do |a|
       verse(a)
       puts
       puts
   end
end

verse(1)
