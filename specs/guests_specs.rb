require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')
require_relative('../rooms')

class GuestsTest < MiniTest::Test

  def setup()

@guests = Guests.new("Martin")
  end

  def test_guests_has_name()
    assert_equal("Martin", @guests.name)
  end 
end
