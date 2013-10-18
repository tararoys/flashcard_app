# model.rb
require 'debugger'

class FlashCardStack
  attr_reader :stack
  def initialize(doc)
    @stack = [] 
    File.open(doc) do |file|
      file.each_slice(3) do |slice|
        @stack << Card.new(definition: slice[0].chomp, term: slice[1].chomp) 
      end
    end
  end

  def remove(card)
    @stack.delete_if { |element| element == card}
    
  end

end


class Card
  attr_reader :term, :definition, :missed_guesses
  def initialize(args)
    @term = args[:term]
    @definition = args[:definition]
    @missed_guesses = 0
  end

  def add_miss
    @missed_guesses += 1
  end

end



