class LikesController < ApplicationController
  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    authorize like = current_user.likes.build(bookmark: @bookmark)

    if like.save
      flash[:notice] = "Bookmark liked."
    else
      flash[:alert] = "Like failed."
    end

    redirect_to request.referrer
  end

  def destroy
    @bookmark = Bookmark.find(params[:bookmark_id])
    authorize like = current_user.likes.find(params[:id])

    if like.destroy
      flash[:notice] = "Like removed."
    else
      flash[:alert] = "Removed failed."
    end
      redirect_to request.referrer
  end
end
