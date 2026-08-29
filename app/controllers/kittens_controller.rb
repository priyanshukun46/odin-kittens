class KittensController < ApplicationController
  before_action :set_kitten, only: %i[show edit update destroy]
  
  def index
   @kittens =  Kitten.all
  end

  def new
    @kitten = Kitten.new
  end

  def edit
  end

  def show
  end

  def update
    if @kitten.update(kitten_params)
      redirect_to @kitten, notice: "kitten was successfully updated."
    else
        render :edit
    end
  end

  def destroy
    @kitten.destroy
     redirect_to kittens_url, notice: "kitten was successfully destroyed."
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
        redirect_to @kitten, notice: "kitten was successfully created."
    else
        render :new
    end
  end

  private
   def set_kitten
     @kitten = Kitten.find(params[:id])
   end
   def kitten_params
     params.require(:kitten).permit(:name, :cuteness, :softness, :age)
   end
end
