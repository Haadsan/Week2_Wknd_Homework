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
    @guest2 = Guest.new("Tina", 20)
    @guest3 = Guest.new("John" ,100)
    @guest4 = Guest.new("Maria" ,300)
    @guests = [@guest1, @guest2, @guest3, @guest4]


    @room1 = Room.new("The golden room", 2, 30)
    @room2 = Room.new("The party room",  4, 30)

  end


  def test_room_name()
    assert_equal("The golden room" , @room1.room_name)
  end

  def test_capacity()
    assert_equal(2, @room1.capacity)
  end

  # add the guest to the Room
  # check that the room has one guest
# binding.pry

# What happens if there are more guests trying to be checked in than there is free space in the room?
# Karaoke venues usually have an entry fee - So the guests could have money so they can pay it.

  def test_guest_check_in()
      @room1.check_in(@guest1)
      assert_equal(1, @room1.guests.length)
    end

    def test_guest_check_in__fail()
        @room1.check_in(@guest2)
        assert_equal(0, @room1.guests.length)
      end

# ........check_out
    def test_guest_check_out()
      # arrange
      @room1.check_in(@guest1)
      # act
      @room1.check_out(@guest1)
      # assert
      assert_equal(0, @room1.guests.count())
    end


    def test_add_song_to_room()
      @room1.add_song_to_room(@song1)
      assert_equal(1, @room1.songs.count)
    end


end
