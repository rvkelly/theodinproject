
def translate(sentence)
	new_sentence = sentence.split.each do |word| 
		case word

		when /\A(?i:(?![aeiou])[a-z]){3}/
			word.gsub!(word, word.slice!(3, word.length) + word[0..2] + 'ay')
		when /\A(?i:(?![aeiou])[a-z]){2}/
			if word.match(/(qu)/)
				word.gsub!(word, word.slice!(3, word.length) + word[0..2] + 'ay')
			else
				word.gsub!(word, word.slice!(2, word.length) + word[0..1] + 'ay')
			end
		when /\A(?i:(?![aeiou])[a-z]){1}/
			if word.match(/(qu)/)
				word.gsub!(word, word.slice!(2, word.length) + word[0..1] + 'ay')
			else
				word.gsub!(word, word.slice(1, word.length) + word[0] + 'ay')
			end
		else 
			word.gsub!(word, word + 'ay')
		end
	end
	new_sentence.join(" ")
end


puts translate("square")