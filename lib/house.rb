class House

  attr_reader :price, :address
  def initialize(purchase_price, home_address)
    @price = purchase_price
    @address = home_address
    @rooms = []
  end

  def rooms
    @rooms
  end

  def add_room(room_variable)
    @rooms << room_variable
  end

  def rooms_from_category(category_of_rooms_in_house)
    @rooms.select do |room|
      room.category == category_of_rooms_in_house
    end
  end

  def area
    total_area = 0
    total_area = @rooms.area.reduce :+
    # total_area = @rooms.reduce do |@rooms.length, @rooms.width|
    #   @rooms.length * @rooms.width
    # end
  end

end
