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

  def show
    @prototype = Prototype.find(params[:id])
  end

  def destroy
    prototype = Prototype.find(params[:id])
    if user_signed_in?
    prototype.destroy
    redirect_to root_path
    else
      redirect_to user_session_path
    end
  end



  private

  def prototype_params
    params.require(:prototype).permit(:name, :image, :catchcopy, :concept).merge(user_id: current_user.id)
  end
  
end
