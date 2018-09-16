class Guest

  attr_reader :name, :wallet

  def initialize(name, wallet)

    @name = name
    @wallet = wallet

  end

  def guest_name(guest)
    return @name
  end

def guest_wallet_value(guest)
  return @wallet
end

end
