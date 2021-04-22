# # No.1
# def pigify(word)
#   vowels = ["a", "e", "i", "o", "u"]
#
#   if vowels.include? word[0].downcase
#     word + "ay"
#   # two cases for "qu"
#   elsif word[0..1] == "qu"
#     word[2..-1] + "quay"
#   elsif word[1..2] == "qu"
#     word[3..-1] + word[0..2] + "ay"
#   # for words that start with 3 consonants
#   elsif !(vowels.include? word[0]) && !(vowels.include? word[1]) && !(vowels.include? word[2])
#     word[3..-1] + word[0..2] + "ay"
#   # for words that start with 2 consonants
#   elsif !(vowels.include? word[0]) && !(vowels.include? word[1]) # for 2
#     word[2..-1] + word[0..1] + "ay"
#   # for words that start with a single consonant
#   else
#     word[1..-1] + word[0] + "ay"
#   end
# end
#
# # No.2
# def translate (sentence)
#   translated = []
#   sentence.split(' ').each do |word|
#     if word[0] == ['a','e','i','o','u']
#       translated << "#{word}" + "ay"
#     else
#       parts = word.partition(/[aeiou]/)
#       if parts[1] == 'u' and parts[0] == 'q'
#         word = parts[2..-1].join + "qu"
#       else
#         word = parts[1..-1].join + parts[0]
#       end
#       translated << "#{word}" + "ay"
#     end
#   end
#   translated.join(' ')
# end

def translate_word(word)
	vowels = 'aeiouAEIOU'
	consonants = 'BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz'
	if ((consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2]) ) || word[1..2] == 'qu')
		return word.slice(3, word.length) + word[0] + word[1] + word[2]  + "ay"

	elsif ((consonants.include?(word[0]) && consonants.include?(word[1]))|| word[0..1] == 'qu')
		return word.slice(2, word.length) + word[0] + word[1] + "ay"

	elsif consonants.include?(word[0])
		return word.slice(1, word.length) + word[0] + "ay"

	else return "#{word}" + "ay"

	end
end

def translate(sentence)
	sentence.split.map { |word| translate_word(word) }.join(' ')

end

puts translate("square")
