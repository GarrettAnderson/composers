class ErasController < ApplicationController
  before_action :set_era, only: [:show, :update, :destroy]

  # GET /eras
  # GET /eras.json
  def index
    @eras = Era.all
  end

  # GET /eras/1
  # GET /eras/1.json
  def show
  end

  # POST /eras
  # POST /eras.json
  def create
    @era = Era.new(era_params)

    if @era.save
      render :show, status: :created, location: @era
    else
      render json: @era.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /eras/1
  # PATCH/PUT /eras/1.json
  def update
    if @era.update(era_params)
      render :show, status: :ok, location: @era
    else
      render json: @era.errors, status: :unprocessable_entity
    end
  end

  # DELETE /eras/1
  # DELETE /eras/1.json
  def destroy
    @era.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_era
      @era = Era.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def era_params
      params.require(:era).permit(:name, :date_beg, :date_end, :description)
    end
end
