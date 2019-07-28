require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')
require_relative('../songs')
require_relative('../rooms')

class RoomsTest < MiniTest::Test

  def setup()



    @song1 = Songs.new("Little Lies", "Fleetwood Mac")
    @song2 = Songs.new("Papercut", "Linkin Park")
    @song3 = Songs.new("Simply the Best", "Tina Turner")
    @song4 = Songs.new("Company", "Justin Beiber")
    @song5 = Songs.new("Three Strikes", "Terror Jr")
    @song6 = Songs.new("Psychosocial", "Slipknot")

    @songs = [@song1, @song2, @song3, @song4, @song5, @song6]

    @rooms = Rooms.new("Tunesville")

  end

  def test_room_has_name()
    assert_equal("Tunesville", @rooms.name)
  end

  def test_guest_count()
    assert_equal(0, @rooms.guest_count)
  end

  def test_add_guest_to_room()
    guest1 = Guests.new("Martin")
    @rooms.add_guest("Martin")
    assert_equal(1, @rooms.guest_count)
  end

  def test_remove_guest_from_room
    guest2 = Guests.new("Diane")
    @rooms.add_guest(guest2)
    @rooms.remove_guest(guest2)
    assert_equal(0, @rooms.guest_count)
  end

  def test_song_count()
    assert_equal(0, @rooms.song_count)
  end

  def test_add_song_to_playlist()
   song7 = Songs.new("Playing With the Boys", "Kenny Loggins")
   @rooms.add_song(song7)
   assert_equal(1, @rooms.song_count)
 end

end
