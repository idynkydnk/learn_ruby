class Book
	attr_accessor :title

	def title
		titleArray = @title.split(' ')

		titleArray.length.times do |i|
			wordArray = []
			word = titleArray[i]

			wordArray[0] = word[0].upcase
			if i > 0
				case word
				when 'a', 'an', 'the', 'and', 'in', 'of'
					wordArray[0] = word[0].downcase
				end
			end
			wordArray.push word[1..-1]
			titleArray[i] = wordArray.join
		end
		@title = titleArray.join(' ')
	end
end