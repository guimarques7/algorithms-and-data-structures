class Node
  attr_accessor :next, :data
  def initialize data
    self.data = data
    self.next = nil
  end
end