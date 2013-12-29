

class Array2D < Array
  def [] ( index )
    super ( index % length ) #wraps last index to first
  end
end

class Caesar_cipher
  def initialize
    @alphabets = Array2D.new
    @alphabets.push("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z")
  end

  def encode(words, shift_key = 1)
    encoded = words.split.each do |word|
                          word.split("").each do |letter|
                            #check letter case
                            unless letter =~ /[[:upper:]]/
                              upper = false
                            else
                              upper = true
                            end

                            letter_index = @alphabets.index(letter.downcase) #letter index in array @alphabet
                            if letter_index
                                if upper
                                  word.gsub!(letter, "#{@alphabets[letter_index + shift_key].upcase}") #for upcase
                                else
                                  word.gsub!(letter, "#{@alphabets[letter_index + shift_key]}")
                                end
                            end
                         end
                        end
    encoded.join(" ")
  end

  # def decode(words, shift_key)
  #      encoded = words.split.each do |word|
  #                         word.split("").each do |letter|
  #                           #check letter case
  #                           unless letter =~ /[[:upper:]]/
  #                             upper = false
  #                           else
  #                             upper = true
  #                           end

  #                           letter_index = @alphabets.index(letter.downcase) #letter index in array @alphabet
  #                           if letter_index
  #                               if upper
  #                                 word.gsub!(letter, "#{@alphabets[letter_index - shift_key].upcase}") #for upcase
  #                               else
  #                                 word.gsub!(letter, "#{@alphabets[letter_index - shift_key]}")
  #                               end
  #                           end
  #                        end
  #                       end
  #   encoded.join(" ")
  # end

end

