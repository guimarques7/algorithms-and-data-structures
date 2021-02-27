class Stack

    attr_accessor :length

    # Initialize an empty stack.
    # Complexity: O(1).
    def initialize
        self.length = 0
    end

    # Returns the size of stack.
    # Complexity: O(1).
    def size
        self.length
    end

end