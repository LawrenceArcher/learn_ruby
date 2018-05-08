class Book
	attr_reader :title

	def title=(new_title)
		arr = new_title.split(" ")
		outputArr = []
		arr.each_with_index {|x, index|
			if index == 0
				outputArr.push(x.capitalize)
			elsif x == "a" || x == "the" || x == "an" || x == "and" || x == "from" || x == "for" || x == "in" || x == "of"
				outputArr.push(x)
			else
				outputArr.push(x.capitalize)
			end
		}
		@title = outputArr.join(" ")
	end
end