class PlacephyactivityrecordsController < ApplicationController
  before_action :set_placephyactivityrecord, only: [:show, :update, :destroy]

  # GET /placephyactivityrecords
  def index
    @placephyactivityrecords = Placephyactivityrecord.all

    render json: @placephyactivityrecords
  end

  # GET /placephyactivityrecords/1
  def show
    render json: @placephyactivityrecord
  end

  # POST /placephyactivityrecords
  def create
    @placephyactivityrecord = Placephyactivityrecord.new(placephyactivityrecord_params)

    if @placephyactivityrecord.save
      render json: @placephyactivityrecord, status: :created, location: @placephyactivityrecord
    else
      render json: @placephyactivityrecord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /placephyactivityrecords/1
  def update
    if @placephyactivityrecord.update(placephyactivityrecord_params)
      render json: @placephyactivityrecord
    else
      render json: @placephyactivityrecord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /placephyactivityrecords/1
  def destroy
    @placephyactivityrecord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_placephyactivityrecord
      @placephyactivityrecord = Placephyactivityrecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def placephyactivityrecord_params
      params.require(:placephyactivityrecord).permit(:place_id, :phyactivity_id)
    end
end
