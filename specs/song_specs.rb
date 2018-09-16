require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")


class SongTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Is This Love", "Bob Marley")
    @song2 = Song.new("She's a bad mama jama", "Carl Calton")
    @song3 = Song.new("Happy", "Pharrel Williams")
  end


def test_song_title()
  assert_equal("Is This Love", @song.song_name)
end

def test_song_artist()
  assert_equal("Bob Marley", @song.artist)
end

end
