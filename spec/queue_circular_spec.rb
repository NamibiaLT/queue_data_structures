require 'rspec'
require 'queue_circular'

RSpec.describe 'MyCircularQueue' do
  describe 'en_queue' do
    let(:queue) { [[3],[1],[2],[3],[4],[],[],[],[4],[]] }
  end

  describe 'de_queue' do
    it 'removes an element from the queue' do
      expect(queue.de_queue).to eq(queue.size < 10)
    end
  end

  describe 'front()' do
  end

  describe 'rear()' do
  end

  describe 'is_empty()' do
  end

  describe 'is_full()' do
  end
end
