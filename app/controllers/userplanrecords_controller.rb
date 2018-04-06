class UserplanrecordsController < ApplicationController
  before_action :set_userplanrecord, only: [:show, :update, :destroy]

  # GET /userplanrecords
  def index
    @userplanrecords = Userplanrecord.all

    render json: @userplanrecords
  end

  # GET /userplanrecords/1
  def show
    render json: @userplanrecord
  end

  # POST /userplanrecords
  def create
    @userplanrecord = Userplanrecord.new(userplanrecord_params)

    if @userplanrecord.save
      render json: @userplanrecord, status: :created, location: @userplanrecord
    else
      render json: @userplanrecord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /userplanrecords/1
  def update
    if @userplanrecord.update(userplanrecord_params)
      render json: @userplanrecord
    else
      render json: @userplanrecord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /userplanrecords/1
  def destroy
    @userplanrecord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userplanrecord
      @userplanrecord = Userplanrecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def userplanrecord_params
      params.require(:userplanrecord).permit(:user_id, :plan_id)
    end
end
