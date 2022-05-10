class BeersController < ApplicationController
  before_action :set_beer, only: %i[ show edit update destroy ]

  # GET /beers or /beers.json
  def index
    @beers = Beer.all
  end

  # GET /beers/1 or /beers/1.json
  def show
  end

  # GET /beers/new
  def new
  end

  # GET /beers/1/edit
  def edit
  end

  # PATCH/PUT /beers/1 or /beers/1.json
  def update
    respond_to do |format|
      if @beer.update(beer_params)
        format.html { redirect_to beer_url(@beer), notice: "Beer was successfully updated." }
        format.json { render :show, status: :ok, location: @beer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @beer.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer
      @beer = Beer.find_by(beer_type: params[:beer_type])
    end

    # Only allow a list of trusted parameters through.
    def beer_params
      params.require(:beer).permit(:beer_type, :stock)
    end
end
