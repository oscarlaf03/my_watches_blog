class RemotePostsController < ApplicationController
  skip_after_action :verify_policy_scoped, only: [:index]
  def index
    response = Api::Gnews::Get::WatchesSearch.call
    if response[:success]
      @remote_posts = response[:content]
    else
       flash[:alert] = "Seems like our sponsor are unavailable at the moment, please try again later"
      @remote_posts = []
    end
  end
end
