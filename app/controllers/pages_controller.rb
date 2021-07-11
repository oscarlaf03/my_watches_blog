class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :new_page ]
  skip_after_action :verify_authorized, only: [ :home, :new_page ]

  def home
  end

  def new_page

  end

end
