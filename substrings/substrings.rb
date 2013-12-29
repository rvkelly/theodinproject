
def substrings(words, dictionary)
  occurrence = Hash.new(0)
  dictionary.zip(words.split(" ")).map do |x, y|
    occurrence[x] +=1  if y =~ /\b(?:#{x})?\b/
    end
    occurrence
end

# dictionary.inject({}) do |occurrence, word|

#     words.split(" ").each do |w|
#       if word == w
#         occurrence[w] += 1
#       end
#     end
#     occurrence
#   end
