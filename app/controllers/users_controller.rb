class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]


  def index
    @users = User.all
  end

  def show
    @user.increment_profile_views_by_one
  end

  private

  def set_user
    @user = User.find_by(handle: params[:handle])
  end
end
