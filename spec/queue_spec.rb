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
end