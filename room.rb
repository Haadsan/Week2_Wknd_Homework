class Room

  attr_reader :room_name, :capacity

  def initialize(room_name, capacity)
    @room_name = room_name
    @guests = []
    @songs = []
    @capacity = capacity
  end


  def check_in(guest)
      @guests.push(guest1)
    end

  def check_out(guest)
    @guests.delete(guest1)
  end

 def add_song_to_room(song)
   return @songs.count()
 end

  end
