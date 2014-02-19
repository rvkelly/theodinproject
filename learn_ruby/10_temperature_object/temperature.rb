class Temperature

	def initialize(options)
		@temperature = options
	end

	def in_fahrenheit
		@temperature[:f] ? @temperature[:f] : ((9.0/5.0) * in_celsius + 32)
	end

	def in_celsius
		@temperature[:c] ? @temperature[:c] : (in_fahrenheit - 32 ) * ( 5.0 / 9.0)
	end

	def self.from_celsius(temp)
		self.new(:c => temp)
	end

	def self.from_fahrenheit(temp)
		self.new(:f => temp)
	end


end

class Celsius < Temperature

	def initialize(temp)
		@temperature = {:c => temp}
	end


end

class Fahrenheit < Temperature

	def initialize(temp)
		@temperature = {:f => temp}
	end
end