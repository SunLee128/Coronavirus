require 'spec_helper'
require './lib/corona_virus/input'
require './lib/corona_virus/human'

RSpec.describe CoronaVirus::Human do
  let(:input) {double(grid_size: 4, virus: [2,1], humans:[[0,0],[2,1],[3,0]], path: ["U","D","L"], vaccine:[3,1]  )}
  subject {described_class.new(:x=> 0, :y => 0, :path => ["U","L","D","L"])}

  describe 'attributes' do
    it 'allows read and write for :x' do
      subject.x = 6
      expect(subject.x).to eq(6)
    end

    it 'allows read and write for :y' do
      subject.y = 3
      expect(subject.y).to eq(3)
    end

    it 'allows read and write for :positions' do
      subject.positions = [[0,1]]
      expect(subject.positions).to eq([[0,1]])
    end
  end

  describe '#initialize' do
    it 'has x coordinate' do
      expect(subject.x).to be_a Integer
    end

    it 'has y coordinate as integer' do
      expect(subject.y).to be_a Integer
    end

    it 'has @path as array' do
      expect(subject.path).to be_an Array
    end

    it 'creates a new Input instance' do
      allow(input).to receive(:new).and_return(input)
      allow(subject).to receive(:new)
      subject.new
      expect(subject.i).not_to be_nil
    end
  end

  describe '#up' do
    it 'moves up' do
      subject.y = 3
      subject.up
      expect(subject.y).to eq(2)
    end

    it 'jumps the other side of the grid when y=0' do
      subject.y = 0
      allow(input).to receive(:grid_size).with(4)
      subject.up
      expect(subject.y).to eq(3)
    end
  end

  describe '#down' do
    it 'moves down' do
      subject.down
      expect(subject.y).to eq(1)
    end

    it 'jumps the other side of the grid when y=i.grid_size-1' do
      subject.y = 3
      allow(input).to receive(:grid_size).with(4)
      subject.down
      expect(subject.y).to eq(0)
    end
  end
  describe '#left' do
    it 'moves left' do
      subject.left
      expect(subject.x).to eq(3)
    end
    it 'jumps the other side of the grid when x=0' do
      subject.x = 0
      allow(input).to receive(:grid_size).with(4)
      subject.left
      expect(subject.x).to eq(3)
    end

  end
  describe '#right' do
    it 'moves right' do
      subject.right
      expect(subject.x).to eq(1)
    end

    it 'jumps the other side of the grid when x=i.grid_size-1' do
      subject.x = 3
      allow(input).to receive(:grid_size).with(4)
      subject.right
      expect(subject.x).to eq(0)
    end
  end

  describe '#move' do
    it 'iterates by the length of the path' do
      subject.move
      expect(subject.positions.length).to eq(subject.path.length)
    end

    it 'responds to #up' do
      expect(subject).to respond_to(:up)
    end

    it 'responds to #down' do
      expect(subject).to respond_to(:down)
    end

    it 'responds to #left' do
      expect(subject).to respond_to(:left)
    end

    it 'responds to #right' do
      expect(subject).to respond_to(:right)
    end
  end
end