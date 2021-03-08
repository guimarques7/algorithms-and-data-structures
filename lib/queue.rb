class Queue
    attr_accessor :head, :tail, :length

    # Initialize an empty queue.
    # Complexity: O(1).
    def initialize
        self.head = nil
        self.tail = nil
        self.length = 0
    end

    # Returns the size of queue.
    # Complexity: O(1).
    def size
        self.length
    end

    # Inserts a new element into the queue.
    # Complexity O(1).
    def enqueue data
        node = Node.new data
        unless head
            self.head = node
        else
            self.tail.next = node
        end
        self.tail = node
        self.length += 1
    end
end