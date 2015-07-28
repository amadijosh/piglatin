def translate(text)
	words = text.split(" ")
	vowelpattern = /(^[aeiou]+)/im
	consonantpattern = /(^[^aeiouq]+)/im
	consonantqpattern = /(^[^aeiouq]*qu?)/im
	output = ""
	words.each do |word|
		if( word =~ vowelpattern)
			output += word + "ay "		
		elsif (word =~ consonantqpattern)
			consonant = word[consonantqpattern]
			output += word.gsub(consonantqpattern,'') + consonant + "ay "
		elsif (word =~ consonantpattern)
			consonant = word[consonantpattern]
			output += word.gsub(consonantpattern,'') + consonant + "ay "
		end
	end
	puts output
end


translate("apple")
translate("banana")
translate("cherry")
translate("eat pie")
translate("three")
translate("school")
translate("quiet")
translate("square")
translate("square")
translate("the quick brown fox")


