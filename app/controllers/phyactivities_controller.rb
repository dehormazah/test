class PhyactivitiesController < ApplicationController
  before_action :set_phyactivity, only: [:show, :update, :destroy]

  # GET /phyactivities
  def index
    @phyactivities = Phyactivity.all

    render json: @phyactivities
  end

  # GET /phyactivities/1
  def show
    render json: @phyactivity
  end

  # POST /phyactivities
  def create
    @phyactivity = Phyactivity.new(phyactivity_params)

    if @phyactivity.save
      render json: @phyactivity, status: :created, location: @phyactivity
    else
      render json: @phyactivity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /phyactivities/1
  def update
    if @phyactivity.update(phyactivity_params)
      render json: @phyactivity
    else
      render json: @phyactivity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /phyactivities/1
  def destroy
    @phyactivity.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phyactivity
      @phyactivity = Phyactivity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def phyactivity_params
      params.fetch(:phyactivity, {})
    end
end
