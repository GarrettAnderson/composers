class ComposersController < ApplicationController
  before_action :set_composer, only: [:show, :update, :destroy]

  # GET /composers
  def index
    @era = Era.find(params[:era_id])
    @composers = @era.composers.all
    # name = params[:name]

    # if name
    #   @composers = Composer.where("name ilike ?", "%#{name}%")
    # else
    #   @composers = Composer.all
    # end
    render json: @composers
  end

  # GET /composers/1
  def show
    # @composers = Composer.find(params[:id])
    # render json: @composer
  end

  # POST /composers
  def create
    @era = Era.find(params[:era_id])
    @composer = @era.composers.new(composer_params)

    if @composer.save
      render json: @composer, status: :created, location: [@era, @composer]
    else
      render json: @composer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /composers/1
  def update
    if @composer.update(composer_params)
      render json: @composer
    else
      render json: @composer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /composers/1
  def destroy
    @composer.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_composer
    @era = Era.find(params[:era_id])
    @composer = Composer.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def composer_params
    params.require(:composer).permit(:name, :famous_piece, :era_id, :birth_date, :death_date, :description)
  end
end
