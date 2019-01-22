# Class to help find matching anagrams
puts 'Type words to populate your list, hit enter when finished'
class Anagram
  def initialize(list)
    @list = list
    @sortedList = @list.dup.map { |word| sort_in_lowercase(word) }
  end

  def find_anagrams input
    finalList = []
    @sortedList.map.with_index do |word, i|
      if same_letters?(word, sort_in_lowercase(input))
        finalList.push(@list[i])
      end
    end
    finalList.delete(input)
    finalList
  end

  def sort_in_lowercase(word)
    word.downcase!
    word.gsub!(/\s+/, '')
    word.split('').sort.join('')
  end

  def same_letters?(first, second)
    first == second
  end
end

# myAna = Anagram.new()
# p myAna.find_anagrams('one')
