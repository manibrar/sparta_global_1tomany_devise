class AuthorsController < ApplicationController
before_action :authenticate_user!
  before_action :set_author, only: [:show, :edit, :update, :delete]

  def index
    @authors = Author.all
  end

  def create
    @author = Author.new (author_params)
    respond_to do |format|
    if @author.save
        format.html { redirect_to root_path}
    else
        format.html {
        render :new
      }
    end
  end
end

  def new
    @author = Author.new
  end

  def show
    id = params[:id]
    @author = Author.find id

  end

  def update
    @author.update(author_params)
    redirect_to root_path
  end

  def delete
    @author.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Author was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def edit
  end

  private
  def author_params
    params.require(:author).permit(:name, :age)
  end

  def set_author
    @author = Author.find(params[:id])
  end
end
