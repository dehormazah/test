class UsertipdietrecordsController < ApplicationController
  before_action :set_usertipdietrecord, only: [:show, :update, :destroy]

  # GET /usertipdietrecords
  def index
    @usertipdietrecords = Usertipdietrecord.all

    render json: @usertipdietrecords
  end

  # GET /usertipdietrecords/1
  def show
    render json: @usertipdietrecord
  end

  # POST /usertipdietrecords
  def create
    @usertipdietrecord = Usertipdietrecord.new(usertipdietrecord_params)

    if @usertipdietrecord.save
      render json: @usertipdietrecord, status: :created, location: @usertipdietrecord
    else
      render json: @usertipdietrecord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usertipdietrecords/1
  def update
    if @usertipdietrecord.update(usertipdietrecord_params)
      render json: @usertipdietrecord
    else
      render json: @usertipdietrecord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usertipdietrecords/1
  def destroy
    @usertipdietrecord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usertipdietrecord
      @usertipdietrecord = Usertipdietrecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usertipdietrecord_params
      params.require(:usertipdietrecord).permit(:user_id, :tipdiet_id)
    end
end
