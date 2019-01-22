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

  context 'same_letters?' do
    it 'returns true if both single words have same letters' do
      word1 = subject.sort_in_lowercase('Mile')
      word2 = subject.sort_in_lowercase('LIME')
      expect(subject.same_letters?(word1, word2)).to eq true
    end

    it 'returns false if both single words do not have same letters' do
      word1 = subject.sort_in_lowercase('Mile')
      word2 = subject.sort_in_lowercase('Tyre')
      expect(subject.same_letters?(word1, word2)).to eq false
    end
  end
end
