class Stack

    class Node
        attr_accessor :next, :data
        def initialize data
            self.data = data
            self.next = nil
        end
    end

    attr_accessor :head, :tail, :length

    # Initialize an empty stack.
    # Complexity: O(1).
    def initialize
        self.head   = nil
        self.tail   = nil
        self.length = 0
    end

    # Returns the size of stack.
    # Complexity: O(1).
    def size
        self.length
    end

    # Inserts a new element into the stack.
    # Complexity O(1).
    def push data
        node = Node.new data
        if length == 0
            self.tail = node
        end

        node.next = self.head
        self.head = node
        self.length += 1
    end

end