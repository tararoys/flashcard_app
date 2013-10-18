# controller.rb
require_relative 'view.rb'
require_relative 'model.rb'


class FlashCardController
  attr_reader :flash_card_stack
  attr_accessor :done
  def initialize
    @flash_card_stack = FlashCardStack.new
    @done = false
  end


  def run
    view = View.new
    view.welcome 
    quit = false
    while !done 
      @done = view.question(flash_card_stack.stack.sample) == 'quit'
    end

    view.quit
  end



end

controller = FlashCardController.new
controller.run
