class Fixnum
	def in_words


		zero_to_nine = { 
							0 => "zero",
							1 => "one",
							2 => "two",
							3 => "three",
							4 => "four",
							5 => "five",
							6 => "six",
							7 => "seven",
							8 => "eight",
							9 => "nine"
		}

		ten_to_twelve = { 	
							10 => "ten",
							11 => "eleven",
							12 => "twelve"

		}

		teens = {
					13 => "thirteen",
					14 => "fourteen",
					15 => "fifteen",
					16 => "sixteen",
					17 => "seventeen",
					18 => "eighteen",
					19 => "nineteen"

		}

		tens = {
					20 => "twenty",
					30 => "thirty",
					40 => "forty",
					50 => "fifty",
					60 => "sixty",
					70 => "seventy",
					80 => "eighty",
					90 => "ninety"
		}

		hundred = " hundred"
		thousand = " thousand"
		million = " million"
		billion = " billion"
		trillion = " trillion"


		# if self >= 0 && self <= 9
		# 	zero_to_nine[self]
		# elsif self >= 10 && self <= 12
		# 	ten_to_twelve[self]
		# elsif self >= 13 && self <= 19
		# 	teens[self]
		# elsif (self / (self/10)) == 10
		# 	tens[self]
		# elsif self > 10 && self < 100
		# 	ten = self.to_s.split("")[0].to_i * 10
		# 	unit = self.to_s.split("")[1].to_i
		# 	tens[ten].to_s + " " + zero_to_nine[unit].to_s
		# elsif self >= 100
		# 	100
		# end

				
	end

end