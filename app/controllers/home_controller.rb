class HomeController < ApplicationController
  def index
    @newest_users = UserModel.newest_users
    @available_users = UserModel.most_recent_available_users
  end

  def search
    @users = UserModel.fulltext_search(params[:query])
  end

  def about
  end
end
