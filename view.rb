# view.rb
require 'debugger'
class View

  def welcome
    puts "Welcome to flashcards! Type the correct term: "
  end

  def question(card)
    puts "Definition: \n" + card.definition
    answer = get_input
    return "remove" if answer == card.term
    until answer == card.term || answer == 'quit'
      puts "Incorrect! Try again"
      card.add_miss
      puts "You have guessed #{card.missed_guesses} times\n\n"
      answer = get_input
    end

    puts "Correct!\n\n" if answer != 'quit'
    return answer
  end

  def get_input
    print "Guess: "
    $stdin.gets.chomp
  end

  def quit
    puts "Thanks for playing!"
  end
end
