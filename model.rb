# model.rb
require 'debugger'

class FlashCardStack
  attr_reader :stack
  def initialize
    @stack = []
    counter = 0
    definition = ''
    term = ''
    File.open("flashcards.txt").readlines.each do |line|
      definition = line.chomp if counter % 3 == 0
      term = line.chomp if counter % 3 == 1
      @stack << Card.new(term: term, definition: definition) if counter % 3 == 2
      counter += 1
    end
  end

end


class Card
  attr_reader :term, :definition
  def initialize(args)
    @term = args[:term]
    @definition = args[:definition]
  end

end
