require 'queue.rb'

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
end