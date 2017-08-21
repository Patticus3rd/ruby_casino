class Wallet
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def winnings
    @amount + @betting_amount
  end
  #TODO: should have other methods to add or sub from wallet
end
