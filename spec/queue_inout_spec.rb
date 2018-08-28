require 'rspec'
require_relative 'queue_inout'

RSpec.describe 'InOutQueue' do
  let(:queue_1) { InOutQueue.new([1,2]) }
  let(:queue_2) { InOutQueue.new([1,nil]) }

  describe 'dequeue' do
    it 'removes an element from the first spot of the queue' do
      expect(queue_1.dequeue).to eq([2])
    end
  end

  describe 'enqueue' do
    it 'adds an element to the end of the queue' do
      expect(queue_1.enqueue(3)).to eq([1,2,3])
    end
  end
end
