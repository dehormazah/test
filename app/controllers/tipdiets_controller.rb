class TipdietsController < ApplicationController
  before_action :set_tipdiet, only: [:show, :update, :destroy]

  # GET /tipdiets
  def index
    @tipdiets = Tipdiet.all

    render json: @tipdiets
  end

  # GET /tipdiets/1
  def show
    render json: @tipdiet
  end

  # POST /tipdiets
  def create
    @tipdiet = Tipdiet.new(tipdiet_params)

    if @tipdiet.save
      render json: @tipdiet, status: :created, location: @tipdiet
    else
      render json: @tipdiet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipdiets/1
  def update
    if @tipdiet.update(tipdiet_params)
      render json: @tipdiet
    else
      render json: @tipdiet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipdiets/1
  def destroy
    @tipdiet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipdiet
      @tipdiet = Tipdiet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tipdiet_params
      params.fetch(:tipdiet, {})
    end
end
