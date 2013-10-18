# model.rb
require 'debugger'

class FlashCardStack
  attr_reader :stack
  def initialize
    @stack = [] 
    File.open("flashcards.txt") do |file|
      file.each_slice(3) do |slice|
        @stack << Card.new(definition: slice[0].chomp, term: slice[1].chomp) 
      end
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


# File.open("flashcards.txt").readlines.each do |line|
#       definition = line.chomp if counter % 3 == 0
#       term = line.chomp if counter % 3 == 1
#       @stack << Card.new(term: term, definition: definition) if counter % 3 == 2
#       counter += 1
#     end
