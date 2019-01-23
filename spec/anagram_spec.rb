require 'anagram'

describe Anagram do
  let(:anagram) { described_class.new }
  before(:each) do
    list = %w[mile era are ear time]
    anagram.populate_list(list)
  end
  context 'find_anagrams' do
    it 'returns list of matching words' do
      expect(anagram.find_anagrams('ear')).to eq %w[era are]
    end
    it 'returns empty list if no matching words' do
      expect(anagram.find_anagrams('fish')).to eq %w[]
    end
  end
end
