require 'stack.rb'

# Stack class tests
RSpec.describe Stack do
  it 'creates a stack class' do 
    stack = Stack.new
    expect(stack).to be_kind_of(Stack)
    expect(stack.head).to eq nil
    expect(stack.tail).to eq nil
    expect(stack.length).to eq 0
  end

  it 'sizes' do
    stack = Stack.new
    expect(stack).to respond_to(:size)
  end

  it 'responds positively to the initial size value' do
    stack = Stack.new
    expect(stack.size).to eq 0
  end

  it 'pushes' do
    stack = Stack.new
    expect(stack).to respond_to(:push)
  end

  it 'responds positively to pushing an item' do
    stack = Stack.new
    stack.push 1
    expect(stack.head).to be_kind_of(Stack::Node)
  end

  it 'responds positively to the correct size value after pushing an item' do
    stack = Stack.new
    stack.push 1
    expect(stack.size).to eq 1
  end

  it 'responds positively to the correct size value after pushing 3 items' do
    stack = Stack.new
    stack.push 1
    stack.push 2
    stack.push 3
    expect(stack.size).to eq 3
  end

  it 'pops' do
    stack = Stack.new
    expect(stack).to respond_to(:pop)
  end

  it 'responds positively to the correct size value after pushing 3 items and poping 1 item' do
    stack = Stack.new
    stack.push 1
    stack.push 2
    stack.push 3
    stack.pop
    expect(stack.size).to eq 2
  end

  it 'peeks' do
    stack = Stack.new
    expect(stack).to respond_to(:peek)
  end

  it 'responds positively peeking after pushing a value' do
    value = 2
    stack = Stack.new
    stack.push value
    expect(stack.peek).to be_kind_of(Stack::Node)
    expect(stack.peek.data).to eq value
  end

  it 'clears' do 
    stack = Stack.new
    expect(stack).to respond_to(:clear)
  end

  it 'responds positively clearing an stack after pushing 3 items' do
    stack = Stack.new
    stack.push 1
    stack.push 2
    stack.push 3
    stack.clear
    expect(stack.size).to eq 0
    expect(stack.length).to eq 0
    expect(stack.head).to eq nil
    expect(stack.tail).to eq nil
    expect(stack.peek).to eq nil
  end

  it 'each' do
    stack = Stack.new
    expect(stack).to respond_to(:each)
  end

  it 'responds positively iterating (each) on pushed values' do
    stack = Stack.new

    list = [1, 2, 3]

    list.each do |value|
      stack.push value
    end

    list.reverse!

    index = 0
    stack.each do |item|
      expect(item.data).to eq list[index]
      index = index + 1
    end
  end

  it 'prints' do
    stack = Stack.new
    expect(stack).to respond_to(:print)
  end

  it 'responds positively printing \'empty\' on a empty stack' do
    stack = Stack.new
    expect { stack.print }.to output("empty\n").to_stdout
  end

  it 'responds positively printing pushed values' do
    list = [1, 2, 3]

    stack = Stack.new
    list.each do |value|
      stack.push value
    end
    
    list.reverse!
    expect { stack.print }.to output(list.flatten!).to_stdout
  end

end 