def ftoc fNumber
	cNumber = (fNumber - 32) / 1.8
	cNumber.round
end

def ctof cNumber
	fNumber = cNumber * 1.8 + 32
	fNumber
end