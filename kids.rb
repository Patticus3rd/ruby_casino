require 'pry'
require 'colorize'

class Kids

  def initialize
    puts ' /$$   /$$ /$$       /$$                  /$$$$$$                                                    /$$
| $$  /$$/|__/      | $$                 /$$__  $$                                                  | $$
| $$ /$$/  /$$  /$$$$$$$  /$$$$$$$      | $$  \__/  /$$$$$$   /$$$$$$  /$$$$$$$   /$$$$$$   /$$$$$$ | $$
| $$$$$/  | $$ /$$__  $$ /$$_____/      | $$       /$$__  $$ /$$__  $$| $$__  $$ /$$__  $$ /$$__  $$| $$
| $$  $$  | $$| $$  | $$|  $$$$$$       | $$      | $$  \ $$| $$  \__/| $$  \ $$| $$$$$$$$| $$  \__/|__/
| $$\  $$ | $$| $$  | $$ \____  $$      | $$    $$| $$  | $$| $$      | $$  | $$| $$_____/| $$
| $$ \  $$| $$|  $$$$$$$ /$$$$$$$/      |  $$$$$$/|  $$$$$$/| $$      | $$  | $$|  $$$$$$$| $$       /$$
|__/  \__/|__/ \_______/|_______/        \______/  \______/ |__/      |__/  |__/ \_______/|__/      |__/'.colorize(:cyan)
    puts "==========================================================================================="
    puts "Welcome to the Kids Corner!"
    puts "Enjoy this free game of Goldfish! While we contact authorities!'"
    puts "Press 'enter' to continue"
    gets.strip.downcase
    puts "Here are your cards!"
    dealfive
  end


def dealfive

  @animals = [  "swordfish", "whale", "shark",
                "dolphin", "seagull", "dragon",
                "eel", "starfish", "hammerhead",
                "sea monkey", "sea lion", "nemo" ]
  random_animal = ["#{@animals.sample}" , "#{@animals.sample}" , "#{@animals.sample}" , "#{@animals.sample}" , "#{@animals.sample}"]
  puts random_animal.uniq
  ask_computer
  end

  def ask_computer
    #instead of pulling from @animals.sample, make a seperate array that you can pull and store information
    #implement a check system
    puts "Do you have a #{@animals.sample}".colorize(:cyan)
    case gets.strip.downcase
    when "yes"
      puts "*you hand over the card*"
    when "goldfish"
      puts "*Computer San looks sad*"
    when "quit"
      puts "Computer is sad! Come back soon!"
      exit
      end
        computer_response
  end

  def computer_response
    puts "Computer San do you have a .....?(enter the animal below)".colorize(:cyan)
    case gets.downcase.strip
      #instead of the case statement, store the responses in a array using hashes and use key value pairs to pull
      #spcific responses should be done using key value pairs refer to Lunch lady
    when "swordfish"
      puts "That sounds dangerous, That doesn't belong in a Kids Game!"
    when "whale"
      puts "I love whales! I think I can speak it too! *GOAAALLDDFISSHH*"
    when "nemo"
      puts "Oh I know him, the clown fish! Unfortunately we're talking about Goldfish. Next!"
    when "dragon"
      puts "I havent bested a dragon in years fortnight."

    when "quit"
      puts "Thanks for playing!"
      exit

    else
      puts "Nope, Sorry Gold fish"
    end
    ask_computer
  end

end
