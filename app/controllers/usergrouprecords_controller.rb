class UsergrouprecordsController < ApplicationController
  before_action :set_usergrouprecord, only: [:show, :update, :destroy]

  # GET /usergrouprecords
  def index
    @usergrouprecords = Usergrouprecord.all

    render json: @usergrouprecords
  end

  # GET /usergrouprecords/1
  def show
    render json: @usergrouprecord
  end

  # POST /usergrouprecords
  def create
    @usergrouprecord = Usergrouprecord.new(usergrouprecord_params)

    if @usergrouprecord.save
      render json: @usergrouprecord, status: :created, location: @usergrouprecord
    else
      render json: @usergrouprecord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usergrouprecords/1
  def update
    if @usergrouprecord.update(usergrouprecord_params)
      render json: @usergrouprecord
    else
      render json: @usergrouprecord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usergrouprecords/1
  def destroy
    @usergrouprecord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usergrouprecord
      @usergrouprecord = Usergrouprecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usergrouprecord_params
      params.require(:usergrouprecord).permit(:user_id, :group_id)
    end
end
