class UserachievementrecordsController < ApplicationController
  before_action :set_userachievementrecord, only: [:show, :update, :destroy]

  # GET /userachievementrecords
  def index
    @userachievementrecords = Userachievementrecord.all

    render json: @userachievementrecords
  end

  # GET /userachievementrecords/1
  def show
    render json: @userachievementrecord
  end

  # POST /userachievementrecords
  def create
    @userachievementrecord = Userachievementrecord.new(userachievementrecord_params)

    if @userachievementrecord.save
      render json: @userachievementrecord, status: :created, location: @userachievementrecord
    else
      render json: @userachievementrecord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /userachievementrecords/1
  def update
    if @userachievementrecord.update(userachievementrecord_params)
      render json: @userachievementrecord
    else
      render json: @userachievementrecord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /userachievementrecords/1
  def destroy
    @userachievementrecord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userachievementrecord
      @userachievementrecord = Userachievementrecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def userachievementrecord_params
      params.require(:userachievementrecord).permit(:user_id, :achievement_id)
    end
end
