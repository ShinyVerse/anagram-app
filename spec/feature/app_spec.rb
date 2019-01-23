require 'app'
require 'anagram'

describe 'Feature' do
  let(:app) { App.new(Anagram.new) }
  before(:each) do
    app.parse_user_input("era cat rat are pear ear")
  end
  context 'found anagrams' do
    it 'prints expected positive output' do
      allow(STDIN).to receive(:gets).and_return("tac\n", "exit\n")
      expect { app.start_app }.to output("Enter a word and receive anagrams from the list of your word\n"\
      "Write 'exit' to finish\n"\
      "Please enter your word to check\n"\
      "The anagrams found are: \n"\
      "cat\n"\
      "Please enter your word to check\n").to_stdout
    end
  end
  context 'no anagram matches' do
    it 'prints expected negative output' do
      allow(STDIN).to receive(:gets).and_return("wrong\n", "exit\n")
      expect { app.start_app }.to output("Enter a word and receive anagrams from the list of your word\n"\
      "Write 'exit' to finish\n"\
      "Please enter your word to check\n"\
      "No matches\n"\
      "Please enter your word to check\n").to_stdout
    end
  end
end
