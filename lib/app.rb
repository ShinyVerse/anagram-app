require_relative 'anagram'

class App
  def initialize(anagram = Anagram.new)
    @anagram = anagram
  end

  def parse_user_input(list)
    raise ArgumentError if validate(list)
    if list.end_with?(".txt")
      file = File.expand_path('../list.txt', File.dirname(__FILE__))
      @user_list = File.open(file).read.split("\n")
    else
      @user_list = list.split(" ")
    end
  end

  def start_app
    puts 'Enter a word and receive anagrams from the list of your word'
    puts 'Write "exit" to finish'
    word = ''
    @anagram.populate_list(@user_list)
    while word != 'exit'
      puts 'Please enter your word to check'
      word = $stdin.gets.chomp
      if word != 'exit'
        puts "The anagrams found are : #{@anagram.find_anagrams(word)}"
      end
    end
  end

  private

  def validate list
    !list.is_a?(String)
  end
end
