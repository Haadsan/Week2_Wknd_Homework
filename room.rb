class Room

attr_reader :songs

  def initialize(songs)
    @songs = songs
    @guests = []
  end

def check_guest_in(new_guest)
  @guests
