def translate words
	wordArray = words.split(' ')
	x = 0
	newString = ''
	newArray = []
	wordArray.length.times do		
		word = wordArray[x]
		case word[0].downcase
		when 'a', 'e', 'i', 'o', 'u' # if first letter is vowel
			newString = word + 'ay'
		else
			case word[1].downcase  # if first is constant and second is vowel
			when 'a', 'e', 'i', 'o', 'u'
				first_letter = word[0]
				newString = word[1..-1] + first_letter + 'ay'
				if word[0..1] == 'qu'  # counts 'qu' as one consonate
					newString = word[2..-1] + 'quay'
				end
			else
				case word[2].downcase # if first and second are constant, third is a vowel
				when 'a', 'e', 'i', 'o', 'u'
					first_letter = word[0]
					second_letter = word[1]
					newString = word[2..-1] + first_letter + second_letter + 'ay'
					if word[1..2] == 'qu'
						newString = word[3..-1] + first_letter + 'quay'  # counts a consonant + qu as 2 consonants
					end
				else   # no more checking for vowels, 3 consonant 
					first_letter = word[0]
					second_letter = word[1]
					third_letter = word[2]
					newString = word[3..-1] + first_letter + second_letter + third_letter + 'ay'
				end
			end
		end 
		newArray.push(newString)
		x += 1
	end
	newArray.join(' ')
end
