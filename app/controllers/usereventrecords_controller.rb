class UsereventrecordsController < ApplicationController
  before_action :set_usereventrecord, only: [:show, :update, :destroy]

  # GET /usereventrecords
  def index
    @usereventrecords = Usereventrecord.all

    render json: @usereventrecords
  end

  # GET /usereventrecords/1
  def show
    render json: @usereventrecord
  end

  # POST /usereventrecords
  def create
    @usereventrecord = Usereventrecord.new(usereventrecord_params)

    if @usereventrecord.save
      render json: @usereventrecord, status: :created, location: @usereventrecord
    else
      render json: @usereventrecord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usereventrecords/1
  def update
    if @usereventrecord.update(usereventrecord_params)
      render json: @usereventrecord
    else
      render json: @usereventrecord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usereventrecords/1
  def destroy
    @usereventrecord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usereventrecord
      @usereventrecord = Usereventrecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usereventrecord_params
      params.require(:usereventrecord).permit(:user_id, :event_id)
    end
end
