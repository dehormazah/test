class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    #@users = User.paginate(:page => params[:page],
    #                       :per_page => 10)
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end


  # POST /users
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        UserMailer.welcome_email(@user).deliver_later
        format.html{redirect_to(@user, notice: 'User was successfully created.') }
        format.json {render json: @user, status: :created, location: @user}
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end


    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name,:email,:bio)
    end
end
