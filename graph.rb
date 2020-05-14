require_relative './node.rb'

class Graph
  attr_reader :sorted_list, :unsorted_list

  def initialize node_hash_array
    @unsorted_list = build_node_array node_hash_array
    @sorted_list = []
  end

  def sort
    @unsorted_list.shuffle!.each { |node| visit_node node }
  end

  def visit_node node
    return if node.visit_status == :visited
    # error if node.visit_status == :touched
    node.touched!
    node.links_to.each do |node_name|
      p node_name
      linked_node = @unsorted_list.select { |n| n.name == node_name }
      p linked_node
      #  error if linked_node.length != 1
      visit_node linked_node.first
    end

    node.visited!
    @sorted_list.unshift node
  end

  private

  def build_node_array node_hash_array
    node_hash_array.map { |node_hash| Node.new node_hash }
  end
end
