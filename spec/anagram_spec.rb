require 'anagram'

describe Anagram do
  context 'sort_in_lowercase' do
    it 'sorts a word alphabetically with no whitespace' do
      expect(subject.sort_in_lowercase('Willow')).to eq 'illoww'
    end

    it 'removes whitespace and returns only sequence of letters' do
      expect(subject.sort_in_lowercase('The Bronze')).to eq 'beehnortz'
    end
  end
end
