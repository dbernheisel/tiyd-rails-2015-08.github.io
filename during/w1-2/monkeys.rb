def verse(number, species = "monkey", casual = false)
  if number == 1
    puts "1 little #{species} jumping on the bed"
    puts "he fell off and bumbed his head"
  else
    puts "#{number} little #{species}s jumping on the bed"
    puts "1 fell off and bumbed his head"
  end
  if !casual
    puts "momma called the doctor and the doctor said"
  else
    puts "momma called the doctor, the doctor said"
  end
  puts "no more #{species}s jumping on the bed"
end

(0...5).each do |counter|
  verse(5-counter)
end
