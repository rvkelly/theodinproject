class Array 


def sum
	if self.empty?
		0
	else
		self.inject { |sum, n| sum + n }
	end

end

def square
	if self.empty?
		self
	else
		self.collect { |n| n*n }
	end
end

def square!
	if self.empty?
		self
	else
		self.collect! { |n| n*n }
	end
end


end
