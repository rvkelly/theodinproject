class RPNCalculator
	attr_accessor :calculator

	def initialize 
		@calculator = Array.new
	end

	def push(operand)
		@calculator.push(operand)
	end

	def value
		@calculator.last
	end

	# def plus
	# 	sum = 0
	# 	while @calculator.length > 1 do
	# 		sum += @calculator.last
	# 		@calculator.pop
	# 	end
	# 	@calculator.push(sum)
	# end

	def plus 
		if @calculator.empty?
			raise "calculator is empty"
		else
			sum = 0
			if @calculator.length == 2
				while @calculator.length != 0 do
						sum += @calculator.last.to_f
						@calculator.pop
				end
			else
				while @calculator.length != 1 do
						sum += @calculator.last.to_f
						@calculator.pop
				end
			end
			@calculator.push(sum)
		end
	end

	def minus
		if @calculator.empty?
			raise "calculator is empty"
		else
			if @calculator.length == 2
				while @calculator.length != 0 do
						a = @calculator.pop.to_f
						b = @calculator.pop.to_f
						difference = b - a
				end
			else
				while @calculator.length != 1 do
						a = @calculator.pop
						b = @calculator.pop
						difference = b - a
				end
			end
			@calculator.push(difference)
		end
	end

	def divide
		if @calculator.empty?
			raise "calculator is empty"
		else
			if @calculator.length == 2
				while @calculator.length != 0 do
						den = @calculator.pop.to_f
						num = @calculator.pop.to_f
						quotient = num / den
				end
			else
				while @calculator.length != 1 do
						den = @calculator.pop.to_f
						num = @calculator.pop.to_f
						quotient = num / den
				end
			end
			@calculator.push(quotient)
		end

	end


	def times
		if @calculator.empty?
			raise "calculator is empty"
		else
			product = 1.0
			if @calculator.length == 2
				while @calculator.length != 0 do
					product *= @calculator.last.to_f
					@calculator.pop
				end
			else
				while @calculator.length != 1 do
					product *= @calculator.last.to_f
					@calculator.pop
				end
			end
			@calculator.push(product)
		end
	end

	def tokens(operation)
		operation.split.collect do |value|
			if value.to_i == 0
				value.to_sym
			else
				value.to_i
			end
		end
	end

	def evaluate(operation)
		tokens(operation).each do |v|
			case v
				when Symbol	
					case v
						when :x
							self.times
						when :/
							self.divide
						when :+
							self.plus
						when :-
							self.minus
					end
				when Integer
					self.push(v)
				else
					raise "you did not input valid mathematical operation"
			end
		end
		self.value
	end

	# def times
	# 	product = 1.0
	# 	if @calculator.length == 2
	# 		while @calculator.length > 0 do
	# 			if @calculator.last =~ /\( | \)/
	# 				@calculator.pop
	# 			else
	# 				product *= @calculator.last.to_f
	# 				@calculator.pop
	# 			end
	# 		end
	# 	else
	# 		while @calculator.length != 1 do
	# 			if @calculator.last =~ /\( | \)/
	# 				@calculator.pop
	# 			else
	# 				product *= @calculator.last.to_f
	# 				@calculator.pop
	# 			end
	# 		end
	# 	end
	# 	@calculator.push(product)
	# end

	# def times
	# 	if @calculator.length == 2
	# 		while @calculator.length > 0 do
	# 				a = @calculator.pop.to_f
	# 				b = @calculator.pop.to_f
	# 				product = a * b
	# 		end
	# 	else
	# 		while @calculator.length != 1 do
	# 				a = @calculator.pop.to_f
	# 				b = @calculator.pop.to_f
	# 				product = a * b
	# 		end
	# 	end
	# 	@calculator.push(product)
	# end



end