class Bar
  attr_reader :bar_name, :rooms, :holding_bar

  def initialize(name)
    @bar_name = name
    @rooms = []
    @holding_bar = []
  end

  def add_room(room, song)
    @rooms << room
  end

  def count_rooms()
    return @rooms.length
  end

  def room_playlist()
    return @rooms
  end

  def add_guest(room, guest)
    return room.add_guest(room, guest) unless false
      @holding_bar << guest
  end

  def remove_guest(room, guest)
    return room.remove_guest(room, guest)


  end










end
