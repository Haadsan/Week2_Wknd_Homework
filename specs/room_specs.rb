require("minitest/autorun")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestRoom <MiniTest::Test

  def setup()
    @song1 = Song.new("Is This Love", "Bob Marley")
    @song2 = Song.new("She's a bad mama jama", "Carl Calton")
    @song3 = Song.new("Happy", "Pharrel Williams")
    @songs = [song1, song2, song3]


    @guest1 = Guest.new("Hadsan", 500)
    @guest2 = Guest.new("Tina", 600)
    @guest3 = Guest.new("John" ,100)
    @guest4 = Guest.new("Maria" ,300)
    @guests = [guest1, guest2, guest3,guest4]



    @room = Room.new(@songs, @guests)

# Guest check-in/out

def test_check_guest_in()
  assert_equal("Tina", @room.check_guest_in(guest2))
end


end
