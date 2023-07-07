class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
  end 
   
   def create 
   @prototype = Prototype.create(prototype_params) 
    if @prototype.save
    redirect_to '/'
   else
    render :new, status: :unprocessable_entity
   end
  end
   
   
    private 
    def prototype_params
      params.require(:prototype).permit(:name, :image, :catchcopy,:concept)
    end
  
end
