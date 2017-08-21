class HighLow
  def initialize(player)
    puts "Welcome to High low #{player.name}"
    puts "You have #{player.wallet.amount} to bet with!"
  end

  def betting
    puts "How much would you like to bet?"
    betting_amount = gets.to_f
    betting_number = rand(40..60)
    puts "The number you have to beat is #{betting_number}"
    puts "Would you like to bet High or Low?"
    case gets.downcase
      when high
        if betting_number < rand(1..100)
          puts "You won!"
        #some code for putting money to account
        elsif betting_number > ran(1..100)
          puts "You lost!"
        end
      when low
        betting_number > rand(1..100)
        #some code
    end
    # ask the player for their bet
    #error checking so the player can't bet with more than they have
    #play the game
    #add or subtract from the players waller after the game
    # allow them to play again or go back to the main menu
  end
end
