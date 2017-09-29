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

    # if @guests.length < @size
    #   @guests << guest
    # else
    #   puts "I'm sorry that room is full. Please retire to our waiting lounge until a room becomes free"
    #   @bar.holding_bar << guest
    #   return @bar.holding_bar
    # end
    #   if @guests.map(&:favourite).include? @song.title
    #   puts "Woohoo that's my toon!!"
    #   return @guests
    #   else
    #   puts "oh oh"
    #   return @guests




  end

  def remove_guest(room, guest)
    return room.remove_guest(room, guest)


  end










end
