class Room
  attr_reader :size, :song, :guests

  def initialize(size, song)
    @size = size
    @song = song
    @playlist = []
    @guests = []

  end

  def count_guests()
    return @guests.length
  end

  def add_song(song)
    @playlist << song
    return @playlist
  end

  def add_guest(room, guest)

    if @guests.length == @size
      puts "I'm sorry that room is full. Please retire to our waiting lounge until a room becomes free"

      return false
    else
      @guests << guest
      if @guests.map(&:favourite).include? @song.title
        puts "Woohoo that's my toon!! '#{@song.title}'"
      else
        puts "what's that racket about?"
      end
      return @guests

    end

  end

  def remove_guest(room, guest)
    @guests.delete guest
    return @guests
  end

  def show_guest_song(guest)
    array = @guests.map { |name| name.favourite }
    return array
  end









end
