class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
  end 
   
   def create 
    Prototype.create(prototype_params) 
    redirect_to '/'
   end
   
   
    private 
    def prototype_params
      params.require(:prototype).permit(:name, :image, :catchcopy,:concept)
    end
  
end
