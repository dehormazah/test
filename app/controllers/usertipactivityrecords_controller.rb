class UsertipactivityrecordsController < ApplicationController
  before_action :set_usertipactivityrecord, only: [:show, :update, :destroy]

  # GET /usertipactivityrecords
  def index
    @usertipactivityrecords = Usertipactivityrecord.all

    render json: @usertipactivityrecords
  end

  # GET /usertipactivityrecords/1
  def show
    render json: @usertipactivityrecord
  end

  # POST /usertipactivityrecords
  def create
    @usertipactivityrecord = Usertipactivityrecord.new(usertipactivityrecord_params)

    if @usertipactivityrecord.save
      render json: @usertipactivityrecord, status: :created, location: @usertipactivityrecord
    else
      render json: @usertipactivityrecord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usertipactivityrecords/1
  def update
    if @usertipactivityrecord.update(usertipactivityrecord_params)
      render json: @usertipactivityrecord
    else
      render json: @usertipactivityrecord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usertipactivityrecords/1
  def destroy
    @usertipactivityrecord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usertipactivityrecord
      @usertipactivityrecord = Usertipactivityrecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usertipactivityrecord_params
      params.require(:usertipactivityrecord).permit(:user_id, :tipactivity_id)
    end
end
