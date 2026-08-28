class KittensController < ApplicationController
  def new
    @kitten = Kitten.new
  end
  def index
    @kittens = Kitten.all
  end
  def show
    # id = params.extract_value(id)
    # @kitten = Kitten.find(id)
  end
  def edit
    
  end
  def create
    Kitten.create()
  end
  def update
    kitten = Kitten.find(params[:id])
    kitten.update!(kitten_params)
    redirect_to kitten
  end

  private
  def set_kitten
    @kitten = Kitten.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def kitten_params
    params.expect(kitten: [:name,:age,:cuteness,:softness])
  end
end
