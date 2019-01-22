# Class to help find matching anagrams
class Anagram
  def sort_in_lowercase(word)
    word.downcase!
    word.gsub!(/\s+/, '')
    word.split('').sort.join('')
  end

  def same_letters?(first, second)
    first == second
  end
end
