class TagsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @tags = current_user.tags
  end

  # def new
  #   @tag = Tag.new
  # end

  # def create
  #   @tag = Tag.create(tag_params)

  #   if @tag.persisted?
  #     flash[:sucess] = 'Tag was created'
  #     redirect_to @tag
  #   else
  #     render 'new'
  #   end
  # end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      flash[:sucess] = 'Tag was updated'
      redirect_to @tag
    else
      render 'edit'
    end
  end

  def show
    @tag = Tag.find(params[:id])
    @documents = @tag.documents.where(user_id: current_user.id)
  end

  # def destroy
  #   @tag = Tag.find(params[:id])
  #   @tag.destroy
  #   flash[:alert] = "#{current_user.name}, I removed your tag out of the database :("
  #   redirect_to tags_path
  # end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
