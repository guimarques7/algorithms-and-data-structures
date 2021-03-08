require 'queue.rb'
require 'node.rb'

# Queue class tests
RSpec.describe 'Queue' do
    it 'creates a queue class' do 
      queue = Queue.new
      expect(queue).to be_kind_of(Queue)
      expect(queue.head).to eq nil
      expect(queue.tail).to eq nil
      expect(queue.length).to eq 0
    end

    it 'sizes' do
      queue = Queue.new
      expect(queue).to respond_to(:size)
    end
  
    it 'responds positively to the initial size value' do
      queue = Queue.new
      expect(queue.size).to eq 0
    end

    it 'enqueues' do
      queue = Queue.new
      expect(queue).to respond_to(:enqueue)
    end

    it 'responds positively after enqueueing an item' do
      queue = Queue.new
      queue.enqueue 1

      expect(queue.size).to eq 1
    end

    it 'responds positively after enqueueing 3 items' do
      queue = Queue.new

      queue.enqueue 1
      queue.enqueue 2
      queue.enqueue 3

      expect(queue.size).to eq 3
    end
end