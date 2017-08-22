require_relative "wallet"
require_relative "kids"

class Player
  attr_accessor :name, :age, :wallet

  def initialize
    puts "What's your name player?"
    @name = gets.strip
    puts "What's your age #{@name}?"
    @age = gets.to_i
    if age < 21
       @kids = Kids.new
    else
      ""
    end
    puts "How much money are you playing with #{@name}?"
    @wallet = Wallet.new(gets.to_f)
  end
end
