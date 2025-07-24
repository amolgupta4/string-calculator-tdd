# spec/lib/string_calculator_spec.rb
require 'rails_helper'
require Rails.root.join('app/lib/strings_calculator') 

RSpec.describe StringsCalculator do
  subject { described_class.new }

  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(subject.add("")).to eq(0)
    end

    it 'returns number for single number input' do
      expect(subject.add("1")).to eq(1)
    end

    it 'returns sum of two numbers' do
      expect(subject.add("1,5")).to eq(6)
    end
  end
end