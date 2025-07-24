# spec/lib/string_calculator_spec.rb
require 'rails_helper'
require Rails.root.join('app/lib/strings_calculator') 

RSpec.describe StringsCalculator do
  subject { described_class.new }

  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(subject.add("")).to eq(0)
    end
  end
end