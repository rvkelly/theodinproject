class Timer

	attr_accessor :seconds

	def seconds(n = 0)
		@seconds = n
	end

	def time_string
		@timer = Time.at(@seconds).gmtime.strftime("%R:%S")
	end

end 