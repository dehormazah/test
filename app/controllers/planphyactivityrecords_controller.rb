class PlanphyactivityrecordsController < ApplicationController
  before_action :set_planphyactivityrecord, only: [:show, :update, :destroy]

  # GET /planphyactivityrecords
  def index
    @planphyactivityrecords = Planphyactivityrecord.all

    render json: @planphyactivityrecords
  end

  # GET /planphyactivityrecords/1
  def show
    render json: @planphyactivityrecord
  end

  # POST /planphyactivityrecords
  def create
    @planphyactivityrecord = Planphyactivityrecord.new(planphyactivityrecord_params)

    if @planphyactivityrecord.save
      render json: @planphyactivityrecord, status: :created, location: @planphyactivityrecord
    else
      render json: @planphyactivityrecord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /planphyactivityrecords/1
  def update
    if @planphyactivityrecord.update(planphyactivityrecord_params)
      render json: @planphyactivityrecord
    else
      render json: @planphyactivityrecord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /planphyactivityrecords/1
  def destroy
    @planphyactivityrecord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planphyactivityrecord
      @planphyactivityrecord = Planphyactivityrecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def planphyactivityrecord_params
      params.require(:planphyactivityrecord).permit(:plan_id, :phyactivity)
    end
end
