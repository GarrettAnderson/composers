class ErasController < ApplicationController
  before_action :set_era, only: [:show, :update, :destroy]

  # GET /eras
  def index
    @eras = Era.all

    render json: @eras
  end

  # GET /eras/1
  def show
    render json: @era
  end

  # POST /eras
  def create
    @era = Era.new(era_params)

    if @era.save
      render json: @era, status: :created, location: @era
    else
      render json: @era.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /eras/1
  def update
    if @era.update(era_params)
      render json: @era
    else
      render json: @era.errors, status: :unprocessable_entity
    end
  end

  # DELETE /eras/1
  def destroy
    @era.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_era
      @era = Era.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def era_params
      params.require(:era).permit(:name, :date_beg, :date_end, :description)
    end
end
