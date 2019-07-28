require('minitest/autorun')
require('minitest/rg')
require_relative('../songs')
require_relative('../rooms')

class SongsTest < MiniTest::Test

  def setup()

    @songs = Songs.new("Little lies","Fleetwood Mac")
  end

  def test_song_has_title()
    assert_equal("Little lies",@songs.title)
  end

  def test_song_has_artist()
    assert_equal("Fleetwood Mac", @songs.artist)
  end
  
end
