def add num1, num2
	num1 + num2
end

def subtract num1, num2
	num1 - num2
end

def sum array
	if array == []
		arraySum = 0
	else
		i = array.length
		arraySum = 0
		while i > 0
			arraySum += array[i-1]
			i -= 1
		end
	end
	arraySum
end

def multiply *nums
	i = nums.length
		arrayMultiple = 1
		while i > 0
			arrayMultiple *= nums[i-1]
			i -= 1
		end
	arrayMultiple
end

def power num1, num2
	num3 = num1 ** num2
end

def factorial number
	if number == 0 || number == 1
		fact = 1
	else
		fact = number
		number -= 1
		while number > 0
			fact = fact * number
			number -= 1
		end
	end
	fact
end
		