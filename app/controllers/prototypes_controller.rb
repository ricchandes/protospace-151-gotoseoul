class PrototypesController < ApplicationController
  def new
    @protospace = Protospace.new
  end 
   
   def create 
    Protospace.create(protospace_params) 
    redirect_to '/'
   end
   
   
    private 
    def protospace_params
      params.require(:prototype).permit(:name, :image, :catchcopy,:concept)
    end
  
end
