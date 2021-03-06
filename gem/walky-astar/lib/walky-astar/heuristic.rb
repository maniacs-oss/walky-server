module Walky::AStar
  class Heuristic
    def initialize(node)
      @node = node
    end

    def relative_to_parent
      return 10 if (@node.x > @node.parent.x && @node.y == @node.parent.y)
      return 10 if (@node.x < @node.parent.x && @node.y == @node.parent.y)
      return 10 if (@node.y > @node.parent.y && @node.x == @node.parent.x)
      return 10 if (@node.y < @node.parent.y && @node.x == @node.parent.x)
      14
    end
  end
end
