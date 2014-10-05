class PaintingsController < ApplicationController

  def index
    @paintings = Painting.all  
  end
  
  def create
    @painting = Painting.create(params['painting'])
    @painting.save!
    redirect_to paintings_path
  end
end
