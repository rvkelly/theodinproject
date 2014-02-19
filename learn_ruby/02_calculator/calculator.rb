
def add(a,b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(number_array)
	summation = 0
	for i in number_array do
		summation += i
	end
	summation
end

def multiply(*numbers)
	product = 1
	numbers.each { |x| product *= x }
	product
end

def power(a,b)
	a**b
end

def factorial(number)
	if number < 1
		return 1
	else 
		return number * factorial(number - 1)
	end

end

