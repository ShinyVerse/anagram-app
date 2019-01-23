# Class to help find matching anagrams
class Anagram
  def populate_list(list)
    @list = list
    @sorted_list = @list.dup.map { |word| sort_in_lowercase(word) }
  end

  def find_anagrams(input)
    final_list = []
    @sorted_list.map.with_index do |word, i|
      final_list.push(@list[i]) if same_letters?(word, sort_in_lowercase(input))
    end
    final_list.delete(input)
    final_list
  end

  private

  def sort_in_lowercase(word)
    word.downcase!
    word.gsub!(/\s+/, '')
    word.split('').sort.join('')
  end

  def same_letters?(first_word, second_word)
    first_word == second_word
  end
end
