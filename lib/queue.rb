class Queue
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
end