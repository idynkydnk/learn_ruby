def echo word
	word
end

def shout word
	word.upcase
end

def repeat *args
	if args.last.is_a? Integer
		newString = ''
		args.last.times do
			newString += args[0] + ' '
		end
		newString = newString[0...-1]
	else
		newString = args[0] + ' ' + args[0]
	end
	newString
end

def start_of_word word, num
	word[0...num]
end

def first_word words
	i = 0
	words.length.times do
		if words[i] == ' '
			newString = words[0...i]
			return newString
		end
		i += 1
	end
end

def titleize words
	newString = words[0].upcase
	i = 1
	(words.length - 1).times do
		newString += words[i]
		if words[i-1] == ' '
			newString[i] = words[i].upcase
			if words[i..i+3] == "and " || words[i..i+4] == "over " || words[i..i+3] == "the " 
				newString[i] = words[i].downcase
			end
		end
		i += 1
	end	
	newString

end

# if words[i...i+4] == ' and '

#words.length.times do
#		if words[i-1] == " "
#			words[i].upcase!
#		end
#	end
#	words