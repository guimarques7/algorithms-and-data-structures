require 'queue.rb'

# Queue class tests
RSpec.describe Queue do
    it 'creates a queue class' do 
      queue = Queue.new
      expect(queue).to be_kind_of(Queue)
    end
end