class StaticPagesController < ApplicationController

  def index
    @board = Board.new.board #Allows us to get the index values and plug in the pieces on the views page
  end

end
