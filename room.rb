class Room

  attr_reader :room_name, :capacity , :guests , :songs , :entry_fee

  def initialize(room_name, capacity, entry_fee)
    @room_name = room_name
    @guests = []
    @songs = []
    @capacity = capacity
    @entry_fee = entry_fee
  end

  # What happens if there are more guests trying to be checked in than there is free space in the room?
  # Karaoke venues usually have an entry fee - So the guests could have money so they can pay it.
  def check_in(guest1)
    if @guests.length < @capacity && @entry_fee <= guest1.wallet
      @guests.push(guest1)

    end
  end

  def check_out(guest1)
    @guests.delete(guest1)
  end

 def add_song_to_room(song1)
   @songs.push(song1)
 end

  end
