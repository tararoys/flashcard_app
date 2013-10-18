# controller.rb
require_relative 'view.rb'
require_relative 'model.rb'


class FlashCardController
  attr_reader :flash_card_stack
  def initialize
    @flash_card_stack = FlashCardStack.new
  end


  def run
    view = View.new
    view.welcome 
    while true 
      view.question(flash_card_stack.sample)
    end
  end



end

controller = FlashCardController.new



