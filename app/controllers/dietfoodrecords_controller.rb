class DietfoodrecordsController < ApplicationController
  before_action :set_dietfoodrecord, only: [:show, :update, :destroy]

  # GET /dietfoodrecords
  def index
    @dietfoodrecords = Dietfoodrecord.all

    render json: @dietfoodrecords
  end

  # GET /dietfoodrecords/1
  def show
    render json: @dietfoodrecord
  end

  # POST /dietfoodrecords
  def create
    @dietfoodrecord = Dietfoodrecord.new(dietfoodrecord_params)

    if @dietfoodrecord.save
      render json: @dietfoodrecord, status: :created, location: @dietfoodrecord
    else
      render json: @dietfoodrecord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dietfoodrecords/1
  def update
    if @dietfoodrecord.update(dietfoodrecord_params)
      render json: @dietfoodrecord
    else
      render json: @dietfoodrecord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dietfoodrecords/1
  def destroy
    @dietfoodrecord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dietfoodrecord
      @dietfoodrecord = Dietfoodrecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dietfoodrecord_params
      params.require(:dietfoodrecord).permit(:diet_id, :food_id)
    end
end
