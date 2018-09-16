class Room

attr_reader :songs

  def initialize(songs)
    @songs = songs
    @guests = []
  end

def check_guest_in(new_guest)
  @guests.push(new_guest)
  return "#{new_guest.name} is checked in"
end

end
