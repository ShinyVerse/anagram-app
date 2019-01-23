require 'app'

describe App do
  let(:anagram) { double('Anagram double', populate_list: true, find_anagrams: ["list"]) }
  let(:app) { described_class.new(anagram) }

  context 'parse_input' do
    it 'can take a file as an argument' do
      input_list = app.parse_user_input(File.dirname(__FILE__) + '/list.txt')
      expect(input_list).to eq %w[era cat rat are pear ear]
    end

    it 'can take input of string as list' do
      list = %w[era cat rat are pear ear]
      expect(app.parse_user_input('era cat rat are pear ear')).to eq list
    end

    it 'errors if passed arg that is not a string' do
      expect { app.parse_user_input(4) }.to raise_error ArgumentError
    end
  end

  context 'app_setup' do
    it 'calls anagram populate_list method' do
      app.app_setup
      expect(anagram).to have_received(:populate_list)
    end
  end

  context 'start_app' do
    it 'calls find_anagrams when word is entered' do
      allow(STDIN).to receive(:gets).and_return("tac\n", "exit\n")

      app.start_app
      expect(anagram).to have_received(:find_anagrams)
    end
  end
end
