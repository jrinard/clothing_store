class ClothingsController < ApplicationController

  def index
    @clothings = Clothing.all
    # @user = current_user      # filtering by user
    # @clothings = @user.clothings
  end

  def show
    @clothing = Clothing.find(params[:id])
    # if params[:upvote]
    #   @answer = Answer.find(params[:upvote])
    #   @answer.liked_by current_user
    #   render :show
    # end
    # if params[:downvote]
    #   @answer = Answer.find(params[:downvote])
    #   @answer.disliked_by current_user
    #   render :show
    # end
  end

  def new
    @clothing = Clothing.new
  end

  def create
    @clothing = Clothing.new(clothing_params)
    @clothing.user_id = session[:user_id]
    if @clothing.save
      flash[:notice] = "Clothing added!"
      redirect_to clothings_path
    else
      render :new
    end
  end

  def edit
    @clothing = Clothing.find(params[:id])
  end

  def update
    @clothing = Clothing.find(params[:id])
    if @clothing.update(clothing_params)
      flash[:notice] = "Clothing updated!"
      redirect_to clothings_path
    else
      render :edit
    end
  end

  def destroy
    @clothing = Clothing.find(params[:id])
    @clothing.destroy
    flash[:notice] = "Clothing deleted!"
    redirect_to clothings_path
  end


  private
    def clothing_params
      params.require(:clothing).permit(:name, :details, :price)
    end
end
