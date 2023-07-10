class PrototypesController < ApplicationController
  def new
        unless user_signed_in?
      redirect_to  user_session_path
    end

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

  def index
    @prototype = Prototype.all
  end

  def edit
    @prototype = Prototype.find(params[:id])
    if user_signed_in? &&current_user.id == @prototype.user_id
    else
      redirect_to new_user_session_path
    end
  end
  

  def update
    @prototype = Prototype.find(params[:id])
    @prototype.update(prototype_params)
    if @prototype.save
      redirect_to prototype_path
    else
      render :edit, status: :unprocessable_entity
    end
  end


  private

  def prototype_params
    params.require(:prototype).permit(:name, :image, :catchcopy, :concept).merge(user_id: current_user.id)
  end
  

end
