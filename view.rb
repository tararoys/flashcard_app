# view.rb

class View

  def welcome
    puts "Welcome to flashcards: type the correct term"
  end

  def question(card)
    puts "Definition:"
    puts card.definition
    print "Guess: "
    answer = gets.chomp
    until answer == card.term
      puts "Incorrect! Try again"
      puts ""
      print "Guess: "
      answer = gets.chomp
      # break out of program if user types 'quit'
    end
    puts "Correct!\n"
  end

end
