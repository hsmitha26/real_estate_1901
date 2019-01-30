class Room

  attr_reader :category
  def initialize(which_bedroom, length, width)
    @category = which_bedroom
    @length = length
    @width = width
    @area = length * width
  end

  def length
    @length
  end

  def width
    @width
  end

  def area
    @length * @width
  end
  
end
