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

  def index
    @prototype = Prototype.all
  end

  def edit
    @prototype = Prototype.find(params[:id])
  end

  def update
    @prototype = Prototype.find(params[:id])
    prototype.update(prototype_params)
    redirect_to root_path
  end

  private

  def prototype_params
    params.require(:prototype).permit(:name, :image, :catchcopy, :concept).merge(user_id: current_user.id)
  end
  

end
