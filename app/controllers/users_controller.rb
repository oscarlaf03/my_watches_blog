class UsersController < ApplicationController
  before_action :set_user, only: %i[ edit  show  update destroy ]

  def index
    @users = policy_scope(User)
  end

  def show
    authorize @user
    @user.increment_profile_views_by_one
    @pagy, @posts = pagy(@user.posts)
  end

  def edit
    authorize @user
  end

  def update
    authorize @user
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_user
    @user = User.find_by(handle: params[:handle])
  end

  def user_params
    params.require(:user).permit(:avatar, :email, :first_name,:last_name)
  end
end
