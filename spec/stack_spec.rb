require 'stack.rb'

# Stack class tests
RSpec.describe Stack do
  it 'creates a stack class' do 
    stack = Stack.new
    expect(stack).to be_kind_of(Stack)
  end

  it 'sizes' do
    stack = Stack.new
    expect(stack).to respond_to(:size)
  end

  it 'responds positively to the initial size value' do
    stack = Stack.new
    expect(stack.size).to eq 0
  end
end 