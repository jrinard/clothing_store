class CommentsController < ApplicationController

    def new
      @clothing = Clothing.find(params[:clothing_id]) # getting id from clothing
      @comment = @clothing.comments.new # maping id/comments/new
    end

    def create
      @clothing = Clothing.find(params[:clothing_id]) # getting id from clothing
      @comment = @clothing.comments.new(comment_params)
      @comment.user_id = current_user.id
      if @comment.clothing.save
        flash[:notice] = "Comment Saved!"
        redirect_to clothing_path(@comment.clothing)
      else
        flash[:notice] = "Comment not Saved!"
        render :new
      end
    end

    def edit
        @clothing = Clothing.find(params[:clothing_id])
        @comment = Comment.find(params[:id])
        render :edit
      end

    def update
      @clothing = Clothing.find(params[:clothing_id])
      @comment = Comment.find(params[:id])
      if @comment.update(comment_params)
        flash[:notice] = "Comment Updated!"
        redirect_to clothing_path(@comment.clothing)  # Redirects to this clothing and passes in it's comments
      else
        render :edit
      end
    end

    def destroy
      @clothing = Clothing.find(params[:clothing_id])
      @comment = Comment.find(params[:id])
      @comment.destroy
      flash[:notice] = "Comment Deleted!"
      redirect_to clothing_path(@comment.clothing)#clothings_path would take you to all clothings
    end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
  end
