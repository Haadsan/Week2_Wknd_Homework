class Guest

  attr_reader :name, :wallet

  def initialize(name, wallet)

    @name = name
    @wallet = wallet

  end

  def guest_name(guest)
    return guest.name
  end

def guest_wallet_value(guest)
  return guest.wallet
end

end
