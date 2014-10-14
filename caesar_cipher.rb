def caesar_cipher(str, shift)

	str.length.times do |index|
		if str[index] =~ /[A-Za-z]/
			original_ascii = str[index].ord
			str[index] = (original_ascii + shift).chr
			new_ascii = str[index].ord
			if original_ascii <= 90 && new_ascii > 90
				str[index] = ((new_ascii - 90) + 64).chr
			end
			if original_ascii <= 122 && new_ascii > 122
				str[index] = ((new_ascii - 122) + 96).chr
			end
		end
	end
	return str
end