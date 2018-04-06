class UserdietrecordsController < ApplicationController
  before_action :set_userdietrecord, only: [:show, :update, :destroy]

  # GET /userdietrecords
  def index
    @userdietrecords = Userdietrecord.all

    render json: @userdietrecords
  end

  # GET /userdietrecords/1
  def show
    render json: @userdietrecord
  end

  # POST /userdietrecords
  def create
    @userdietrecord = Userdietrecord.new(userdietrecord_params)

    if @userdietrecord.save
      render json: @userdietrecord, status: :created, location: @userdietrecord
    else
      render json: @userdietrecord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /userdietrecords/1
  def update
    if @userdietrecord.update(userdietrecord_params)
      render json: @userdietrecord
    else
      render json: @userdietrecord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /userdietrecords/1
  def destroy
    @userdietrecord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userdietrecord
      @userdietrecord = Userdietrecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def userdietrecord_params
      params.require(:userdietrecord).permit(:user_id, :diet_id)
    end
end
