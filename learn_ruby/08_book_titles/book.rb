class Book
	attr_accessor :title

	def title=(book_title)
		# @title = book_title.split.each { |word| word.capitalize! unless (conjunctions?(word))  || (prepositions?(word)) }.join(" ")
		@title = book_title.split.each do |word| 
			word.capitalize! unless (conjunctions?(word) || prepositions?(word))
		end
		@title[0].capitalize!
		@title = @title.join(" ")

	end

	def conjunctions?(word)
		conjunctions_list = ['and', 'but', 'or', 'yet', 'for', 'nor', 'so']
		if conjunctions_list.include?(word)
			true
		else
			false
		end
	end

	def prepositions?(word)
		prepositions_list = ["a",
								"an",
								"aboard",
								"about",
								"above",
								"across",
								"after",
								"against",
								"along",
								"amid",
								"among",
								"anti",
								"around",
								"as",
								"at",
								"before",
								"behind",
								"below",
								"beneath",
								"beside",
								"besides",
								"between",
								"beyond",
								"but",
								"by",
								"concerning",
								"considering",
								"despite",
								"down",
								"during",
								"except",
								"excepting",
								"excluding",
								"following",
								"for",
								"from",
								"in",
								"inside",
								"into",
								"like",
								"minus",
								"near",
								"of",
								"off",
								"on",
								"onto",
								"opposite",
								"outside",
								"over",
								"past",
								"per",
								"plus",
								"regarding",
								"round",
								"save",
								"since",
								"than",
								"the",
								"through",
								"toward",
								"towards",
								"under",
								"underneath",
								"unlike",
								"until",
								"up",
								"upon",
								"versus",
								"via",
								"with",
								"within",
								"without"]

		if prepositions_list.include?(word)
			true
		else
			false
		end
	end


end

