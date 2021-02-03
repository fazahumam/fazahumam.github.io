class AuthorsController < ApplicationControlle
  def index
    @author = Author.all
  end

  def show
    id = params[:id]
    @author = Author.find(id)
  end

  def new
    @author = Author.new
  end

  def create
    author = Author.new(resource_params)
    author.save
    flash[:notice] = 'the author has been created'
    puts author.errors.messages
    redirect_to authors_path
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    @author.update(resource_params)
    flash[:notice] = 'the author has been updated'
    redirect_to author_path
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    flash[:notice] = 'the author has been deleted '
    redirect_to authors_path
  end

  private

  def resource_params
    params.require(:author).permit(:name, :age, :address)
  end
end
