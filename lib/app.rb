require_relative 'anagram'
# Handles running of the app
class App
  def initialize(anagram = Anagram.new)
    @anagram = anagram
  end

  def parse_user_input(list)
    if list.end_with?('.txt')
      file = File.expand_path('../list.txt', File.dirname(__FILE__))
      @user_list = File.open(file).read.split("\n")
    else
      @user_list = list.split(' ')
    end
  end

  def app_setup
    puts 'Enter a word and receive anagrams from the list of your word'
    puts 'Write "exit" to finish'
    @anagram.populate_list(@user_list)
  end

  def start_app
    app_setup
    word = ''
    while word != 'exit'
      puts 'Please enter your word to check'
      word = $stdin.gets.chomp
      next unless word != 'exit'
      list = @anagram.find_anagrams(word)
      puts "The anagrams found are: \n#{list.join("\n")}" unless list.empty?
      puts 'No matches' if list.empty?
    end
  end
end
