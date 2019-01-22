require 'app'

describe App do
  let(:anagram) { double('Anagram double') }
  let(:app) { described_class.new(anagram) }

  context 'parse_input' do
    it 'can take a file as an argument' do
      input_list = app.parse_input(File.dirname(__FILE__) + '/list.txt')
      expect(input_list).to eq %w[era cat rat are pear ear]
    end

    it 'can take input of string as list' do
      expect(app.parse_input('era cat rat are pear ear')).to eq %w[era cat rat are pear ear]
    end

    it 'errors if passed arg that is not a string' do
      expect { app.parse_input(4) }.to raise_error
    end
  end

  context 'start_app' do
    it 'calls find_anagrams when word is entered' do
      allow(anagram).to receive(:update_list)
      allow(anagram).to receive(:find_anagrams)
      allow(STDIN).to receive(:gets).and_return("tac\n", "exit\n")

      app.start_app
      expect(anagram).to have_received(:find_anagrams)
    end
  end
end
