require 'app'

describe App do
  let(:app) { described_class.new() }

  context 'get_list' do
    it 'can take a file as an argument' do
      expect(app.get_list(File.dirname(__FILE__) + '/list.txt')).to eq ["era","cat","rat","are","pear","ear"]
    end

    it 'can take input of string as list' do
      expect(app.get_list("era cat rat are pear ear")).to eq ["era","cat","rat","are","pear","ear"]
    end
  end
end
