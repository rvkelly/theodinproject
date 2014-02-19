def echo(word)
	word
end

def shout(word)
	word.upcase
end


def repeat(word, number_of_times = 2)
	word + (" " + word) * (number_of_times - 1)
end

def start_of_word(word, index = 1)
	word[0..index-1]
end

def first_word(sentence)
	sentence.split[0]
end

def titleize(sentence)
	new_sentence = sentence.split.each do |word|
		word.capitalize! unless (word == "and" || word == "over" || word == "the") 
	end
	new_sentence[0].capitalize!
	new_sentence.join(" ")
end