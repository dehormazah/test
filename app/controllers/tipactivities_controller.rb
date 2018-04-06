class TipactivitiesController < ApplicationController
  before_action :set_tipactivity, only: [:show, :update, :destroy]

  # GET /tipactivities
  def index
    @tipactivities = Tipactivity.all

    render json: @tipactivities
  end

  # GET /tipactivities/1
  def show
    render json: @tipactivity
  end

  # POST /tipactivities
  def create
    @tipactivity = Tipactivity.new(tipactivity_params)

    if @tipactivity.save
      render json: @tipactivity, status: :created, location: @tipactivity
    else
      render json: @tipactivity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipactivities/1
  def update
    if @tipactivity.update(tipactivity_params)
      render json: @tipactivity
    else
      render json: @tipactivity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipactivities/1
  def destroy
    @tipactivity.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipactivity
      @tipactivity = Tipactivity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tipactivity_params
      params.fetch(:tipactivity, {})
    end
end
