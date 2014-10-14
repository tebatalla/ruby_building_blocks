def substrings(str,dictionary)
	result = {}
	dictionary.each do |term|
		match_count = str.downcase().scan(term.downcase()).size
		result[term] = match_count unless match_count == 0
	end
	return result
end