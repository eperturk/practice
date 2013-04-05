class StringAndArrayProblems
	def replace_space(input_string)
		input_string.gsub(" ",'%20')
	end

	def longword(words_array)
		longword = ""
		count = 0
		words_array.map{|word|
			current_word_count = 0
			#compare each word to the words and find the highest count of matches
			otherwords = words_array - word
			otherwords.each{|other_word|
				current_word_count +=1 if (word.include?(other_word))
			}
			longword = word if current_word_count > count
			count = current_word_count
		}
		longword
	end

	def find_subsquare(matrix)
		
	end
end