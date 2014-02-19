def measure(n = 1) 
	time_before = Time.now
	n.times do 
		yield
	end
	time_dif = Time.now - time_before
	average_time = time_dif / n
end