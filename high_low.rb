require 'pry'
require_relative 'wallet'

class HighLow
  attr_accessor :wallet
  def initialize(player)
    puts ' /$$   /$$ /$$           /$$             /$$
| $$  | $$|__/          | $$            | $$
| $$  | $$ /$$  /$$$$$$ | $$$$$$$       | $$        /$$$$$$  /$$  /$$  /$$
| $$$$$$$$| $$ /$$__  $$| $$__  $$      | $$       /$$__  $$| $$ | $$ | $$
| $$__  $$| $$| $$  \ $$| $$  \ $$      | $$      | $$  \ $$| $$ | $$ | $$
| $$  | $$| $$| $$  | $$| $$  | $$      | $$      | $$  | $$| $$ | $$ | $$
| $$  | $$| $$|  $$$$$$$| $$  | $$      | $$$$$$$$|  $$$$$$/|  $$$$$/$$$$/
|__/  |__/|__/ \____  $$|__/  |__/      |________/ \______/  \_____/\___/
               /$$  \ $$
              |  $$$$$$/
               \______/                                                   '.colorize(:cyan)
    puts "Welcome to High Low #{player.name}"
    puts "You have #{player.wallet.amount} to bet with!"
    betting(player)
  end

  def betting(player)
    puts "How much would you like to bet?"
    betting_amount = gets.to_f
      if betting_amount > player.wallet.amount || betting_amount < 1
        puts "You don't have enough cash!"
        betting(player)
      end
    #check account if they have enough money
    betting_number = rand(40..60)
    puts "The number you have to beat is #{betting_number}"
    puts "Would you like to bet High or Low?"
    case gets.downcase.strip
    when "high"
      if betting_number < rand(1..100)
        puts "You won!".colorize(:green)
        player.wallet.amount += betting_amount
        #some code for putting money to account
      elsif betting_number > rand(1..100)
        puts "You lost!".colorize(:red)
        player.wallet.amount -= betting_amount
      else
        puts "You tied!"
      end
    when "low"
      if betting_number > rand(1..100)
          puts "You won!".colorize(:green)
          player.wallet.amount += betting_amount
      elsif betting_number < rand(1..100)
          puts "You lost!".colorize(:red)
          player.wallet.amount -= betting_amount
      else
          puts "You tied!"
      end
    end
    puts player.wallet.amount
    # ask the player for their bet
    #error checking so the player can't bet with more than they have
    #play the game
    #add or subtract from the players waller after the game
    # allow them to play again or go back to the main menu
  end
end
