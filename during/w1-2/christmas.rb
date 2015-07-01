lyrics = ["A Partridge in a Pear Tree","Two Turtle Doves","Three French Hens","Four Calling Birds","Five Golden Rings","Six Geese a Laying","Seven Swans a Swimming","Eight Maids a Milking","Nine Ladies Dancing","Ten Lords a Leaping","Eleven Pipers Piping","Twelve Drummers Drumming"]
day_num = ["first","second","third","fourth","fifth","sixth","seventh","eight","ninth","tenth","eleventh","twelth"]
full_verse = ""
counter = 0

(0..11).each do |counter|
  next_verse = lyrics[counter]
  if counter == 1
    full_verse = "and " + full_verse
  end
  full_verse = next_verse + "\n" + full_verse
  puts "On the #{day_num[counter]} day of christmas my true love gave to me #{"\n" + full_verse}"
  puts "\n"
end
