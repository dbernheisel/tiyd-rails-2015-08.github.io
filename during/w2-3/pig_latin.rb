puts "Cats hate people".pig_latin

class String

  def pig_latin
    tringsay = ""
    self.split.each do |word|
      tringsay << word[1..-1] + word[0] + "ay "
    end
    tringsay.strip
  end

  private def complain_about_cats
    "Cats suxorz"
  end
end

puts "Cats hate people".pig_latin
puts "Cats hate people".send(:complain_about_cats)
