class StaticPagesController < ApplicationController
  def index
    if params[:user_id]
      load_user_photos(params[:user_id])
    else
      load_default_photos
    end
  rescue Flickr::FailedResponse => e
    flash.now[:alert] = "User not found or does not exist"
    load_default_photos
  end

  private

  def load_user_photos(user_id)
    @photos = Flickr.new.photos.search(user_id: user_id, per_page: 12)
  end

  def load_default_photos
    @photos = Flickr.new.photos.getRecent(per_page: 12)
  end
end
