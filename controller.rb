# controller.rb
require 'debugger'
require_relative 'view.rb'
require_relative 'model.rb'


class FlashCardController
  attr_reader :flash_card_stack
  attr_accessor :done
  def initialize(file)
    @flash_card_stack = FlashCardStack.new(file)
    @done = false
  end


  def run
    view = View.new
    view.welcome 
    quit = false
    while !done 
      card = flash_card_stack.stack.sample
      answer = view.question(card)
      @done = answer == 'quit'
      if answer == "remove"
        puts "\n\nYou got it right on the first try!  We are removing this card from the stack.\n\n" 
        flash_card_stack.remove(card)
      end

      #reach into stack and remove card if return
    end

    view.quit
  end



end

controller = FlashCardController.new(ARGV[0])
controller.run
