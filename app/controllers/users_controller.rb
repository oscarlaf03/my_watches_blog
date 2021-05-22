class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]


  def index
    @users = policy_scope(User)
  end

  def show
    authorize @user
    @user.increment_profile_views_by_one
  end

  private

  def set_user
    @user = User.find_by(handle: params[:handle])
  end
end
