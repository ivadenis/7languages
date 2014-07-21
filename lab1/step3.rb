class Tree
  attr_accessor :children, :name
  def initialize(name, children = [])
    @name=name
    @children=children
  end
  def visit(&block)  # & captures otherwise anonymous block
    block.call(self)  # self is implicit parameter ("this" in C++/Java)
    children.each { |c| c.visit(&block) }
  end
end
t = Tree.new(84, [
    Tree.new(7, []), 
    Tree.new(12, [ 
      Tree.new(2, []), 
      Tree.new(2, []), 
      Tree.new(3, [])
      ])
    ])

sum = 0
t.visit { |n| sum += n.name }
p(sum)