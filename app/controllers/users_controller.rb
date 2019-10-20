class UsersController < ApplicationController
  def show
    @user = User.includes(:topics, :likes, :bookmarks).find(params[:id])
  end
end
