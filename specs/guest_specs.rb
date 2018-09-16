
require("minitest/autorun")
require_relative("../guest.rb")



class TestGuest < MiniTest::Test

def setup
  @guest1 = Guest.new("Hadsan", 500)
  @guest2 = Guest.new("Tina", 600)
  @guest3 = Guest.new("John" ,100)
  @guest4 = Guest.new("Maria" ,300)
end


def test_guest_name()
  assert_equal("Hadsan", @guest1.name)
end

def test_guest_wallet_value()
  assert_equal(500, @guest1.wallet)
end


end
