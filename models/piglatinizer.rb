
class PigLatinizer

    VOWELS = ["a", "e", "i", "o", "u"]

    def find_first_vowel_position(word)
        word_array = word.split("")
        word_array.each do |l|
            if VOWELS.include?(l)
                return index = word.index(l)
            end
        end
    end

    def piglatinize_word(word)
        if !VOWELS.include?(word[0].downcase)
            first_vowel_index = find_first_vowel_position(word)
            word[first_vowel_index..-1] + word[0..first_vowel_index - 1] + "ay"
        else
            word + "way"
        end
    end

    def piglatinize(string)
        string_array = string.split(" ")
        pig_string_array = string_array.map do |word|
            self.piglatinize_word(word)
        end
        pig_string_array.join(" ")
    end

end