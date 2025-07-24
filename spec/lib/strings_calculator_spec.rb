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

    it 'returns sum of multiple comma-separated numbers' do
      expect(subject.add("1,2,3,4")).to eq(10)
    end

    it 'handles newlines between numbers' do
      expect(subject.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiter using //;\\n format' do
      expect(subject.add("//;\n1;2")).to eq(3)
    end

    it 'raises error on negative numbers' do
      expect { subject.add("1,-2,3,-4") }.to raise_error("negative numbers not allowed -2,-4")
    end
  end
end