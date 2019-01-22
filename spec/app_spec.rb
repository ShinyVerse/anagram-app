require 'app'

describe App do
  let(:app) { described_class.new() }

  context 'parse_input' do
    it 'can take a file as an argument' do

      input_list = app.parse_input(File.dirname(__FILE__) + '/list.txt')
      expect(input_list).to eq ["era","cat","rat","are","pear","ear"]
    end

    it 'can take input of string as list' do
      expect(app.parse_input("era cat rat are pear ear")).to eq ["era","cat","rat","are","pear","ear"]
    end

    it 'errors if passed arg that is not a string' do
      expect{app.parse_input(4)}.to raise_error
    end
  end
end
