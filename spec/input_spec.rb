require 'spec_helper'
require './lib/corona_virus/input'

RSpec.describe CoronaVirus::Input do
  subject {described_class.new}

  describe 'attributes' do
    it 'allows read and write for :grid_size' do
      subject.grid_size = 6
      expect(subject.grid_size).to eq(6)
    end

    it 'allows read and write for :virus' do
      subject.virus = [4,5]
      expect(subject.virus).to eq([4,5])
    end

    it 'allows read and write for :humans' do
      subject.humans = [[4,5], [1,2]]
      expect(subject.humans).to eq([[4,5], [1,2]])
    end

    it 'allows read and write for :path' do
      subject.path = "whatever"
      expect(subject.path).to eq("whatever")
    end

    it 'allows read and write for :vaccine' do
      subject.vaccine = [0,0]
      expect(subject.vaccine).to eq([0,0])
    end
  end

  describe "#initialize" do
    it 'has @grid_size as Integer' do
      expect(subject.grid_size).to be_a Integer
    end

    it 'has @virus as an Array' do
      expect(subject.virus).to be_an Array
    end

    it 'has @humans as an Array' do
      expect(subject.humans).to be_an Array
    end

    it 'has @path as an Array' do
      expect(subject.path).to be_an Array
    end

    it 'has @vaccine as an Array' do
      expect(subject.vaccine).to be_an Array
    end
  end

end