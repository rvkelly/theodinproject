def reverser
	words = yield
	word_reverse = words.split.each { |word| word.reverse! }
	word_reverse.join(" ")
end

def adder(n = 1)
	number = yield 
	number += n
end

def repeater(n = 3)
	n.times do
		yield 
	end
end




