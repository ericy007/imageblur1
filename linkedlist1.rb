class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  def pop
    return print "nil\n" if @data.nil?
    print "#{@data.value}\n"
    @data = @data.next_node
  end


def reverse_list(list)
  stack = Stack.new
  while list
    stack.push(list.value)
    list = list.next_node
  end

  return stack.data
end
end

