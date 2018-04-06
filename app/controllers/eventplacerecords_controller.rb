class EventplacerecordsController < ApplicationController
  before_action :set_eventplacerecord, only: [:show, :update, :destroy]

  # GET /eventplacerecords
  def index
    @eventplacerecords = Eventplacerecord.all

    render json: @eventplacerecords
  end

  # GET /eventplacerecords/1
  def show
    render json: @eventplacerecord
  end

  # POST /eventplacerecords
  def create
    @eventplacerecord = Eventplacerecord.new(eventplacerecord_params)

    if @eventplacerecord.save
      render json: @eventplacerecord, status: :created, location: @eventplacerecord
    else
      render json: @eventplacerecord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /eventplacerecords/1
  def update
    if @eventplacerecord.update(eventplacerecord_params)
      render json: @eventplacerecord
    else
      render json: @eventplacerecord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /eventplacerecords/1
  def destroy
    @eventplacerecord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eventplacerecord
      @eventplacerecord = Eventplacerecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def eventplacerecord_params
      params.require(:eventplacerecord).permit(:event_id, :place_id)
    end
end
