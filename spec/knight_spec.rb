require 'knight'

describe MoveTree do

  let(:tree){MoveTree.new([3,3], 1)}
  let(:tree_2){MoveTree.new([3,3], 2)}

  describe "#initialize" do
    it "initializes a tree of moves that is @max_depth deep with a starting position of starting[x], starting[y]" do
      expect(MoveTree.new([3, 3], 1)).to be_a(MoveTree)
    end
  end

  describe "#build_move" do
    it "creates a new Move object with the passed-in x,y value pair" do
      expect(tree.build_move(4, 5)).to be_a(Move)
    end
  end

  describe "#build_trees" do
    it "builds a tree starting at starting position node" do
      tree.build_trees(tree.starting_pos)
      # puts tree.starting_pos.children
      expect(tree.starting_pos.children.length).to eq(8)
    end
  end

  describe "#build_to_depth" do
    it "builds a tree to depth" do
      tree_2.build_to_depth(tree_2.starting_pos)
      expect(tree_2.starting_pos.children[0].children.length).to eq(6)
    end
  end

end
