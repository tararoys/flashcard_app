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



