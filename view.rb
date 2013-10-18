# view.rb
require 'debugger'
class View

  def welcome
    puts "Welcome to flashcards: type the correct term"
  end

  def question(card)
    puts "Definition: \n" + card.definition
    answer = get_input
    
    until answer == card.term || answer == 'quit'
      puts "Incorrect! Try again \n\n"
      answer = get_input
    end

    puts "Correct!\n\n" if answer != 'quit'
    return answer
  end

  def get_input
    print "Guess: "
    gets.chomp
  end

  def quit
    puts "Thanks for playing!"
  end
end
