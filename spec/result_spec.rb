require 'spec_helper'
require './lib/corona_virus/result'

RSpec.describe CoronaVirus::Result do
  subject {described_class.new}

  describe 'attributes' do
    it 'allows read and write for :coronavirus_count' do
      subject.coronavirus_count = 6
      expect(subject.coronavirus_count).to eq(6)
    end
  end

  describe '#count_add' do
    it 'adds the variable by one' do
      subject.count_add
      expect(subject.coronavirus_count).to eq(1)
    end
  end

  describe '#count_minus' do
    it 'subtracts the variable by one' do
      subject.count_minus
      expect(subject.coronavirus_count).to eq(0)
    end

    it 'does not subtract when the variable is 0' do
      subject.coronavirus_count = 0
      subject.count_minus
      expect(subject.coronavirus_count).to eq(0)
    end
  end
end