class Node
  attr_reader :name, :links_to, :visit_status

  def initialize(name:, links_to: [])
    @name = name
    @links_to = links_to
    @visit_status = :none
  end

  def touched!
    @visit_status = :touched
  end

  def visited!
    @visit_status = :visited
  end

end
