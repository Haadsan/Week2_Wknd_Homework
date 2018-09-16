require("minitest/autorun")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestRoom < MiniTest::Test

  def setup()
    @song1 = Song.new("Is This Love", "Bob Marley")
    @song2 = Song.new("She's a bad mama jama", "Carl Calton")
    @song3 = Song.new("Happy", "Pharrel Williams")
    @songs = [@song1, @song2, @song3]


    @guest1 = Guest.new("Hadsan", 500)
    @guest2 = Guest.new("Tina", 600)
    @guest3 = Guest.new("John" ,100)
    @guest4 = Guest.new("Maria" ,300)
    @guests = [@guest1, @guest2, @guest3, @guest4]


    @room1 = Room.new("The golden room", 2)
    @room2 = Room.new("The party room",  4)

  end


  def test_room_name()
    assert_equal("The golden room" , @room1.room_name)
  end

  def test_capacity()
    assert_equal(2, @room1.capacity)
  end

  # add the guest to the Room
  # check that the room has one guest
  def test_guest_check_in()
      @room.check_in(@guest1)
      assert_equal(1, @room.guests.count())
    end

    def test_guest_check_out()
      # arrange
      @room.check_in(@guest1)
      # act
      @room.check_out(@guest1)
      # assert
      assert_equal(0, @room.guests.count())
    end


    def test_add_song_to_room()
      @room1.add_song_to_room(@song1)
      assert_equal(1, @room1.guest_check_in)
    end


end
