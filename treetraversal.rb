class BinaryTree
  attr_reader :root

  def initialize(root)
    @root = root
  end

  def print_inorder_with_recursion(current)
    return if current.nil?

    print_inorder_with_recursion(current.left)
    print "#{current.data} "
    print_inorder_with_recursion(current.right)
  end

  def print_inorder_without_recursion
    current = root
    stack = Stack.new

    while true do
      if !current.nil?
        stack.push(current)
        current = current.left
      else
        if stack.empty?
          break
        else
          current = stack.pop
          print "#{current.data} "
          current = current.right
        end
      end
    end
  end
end

class Stack
  def initialize
    @data = []
  end

  def push(element)
    @data.push(element)
  end

  def pop
    @data.pop
  end

  def empty?
    @data.empty?
  end
end

class TreeNode
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
    @left, @right = nil, nil
  end
end

root = TreeNode.new(10)
root.left = TreeNode.new(5)
root.right = TreeNode.new(14)
root.left.left = TreeNode.new(1)
root.left.right = TreeNode.new(6)
binary_tree = BinaryTree.new(root)

puts "Inorder traversal with recursion :"
binary_tree.print_inorder_without_recursion
puts ""
puts ""


puts "Inorder traversal without recursion :"
binary_tree.print_inorder_without_recursion
puts ""
puts ""